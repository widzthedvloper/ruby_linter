require_relative 'read_file'
class FormatChecker
  attr_reader :file, :lines, :line_number, :errors

  def initialize(file_path)
    @file_path = file_path
    @file = ReadFile.new(file_path)
    @lines = @file.lines
    @line_number = @file.line_number
    @errors = []
  end

  def show_result
    check_camel_case
    space_btw_methods
    line_length
    space_after_line
  end

  private

  def check_camel_case
    @lines.each_with_index do |line, line_num|
      if line.match(/class\b/) && !line.match(/\b[A-Z]/)
        message_error = "#{@file_path}: line:#{line_num + 1} use CamelCase after class keyword"
        @errors << message_error
      end
    end
  end

  def space_btw_methods
    @lines.each_with_index do |line, line_num|
      if line.match(/def\b/) && !@lines[line_num - 1].strip.empty?
        message_error = "#{@file_path}: line:#{line_num + 1} Expected empty line before def keyword"
        @errors << message_error
      end
    end
  end

  def line_length
    @lines.each_with_index do |line, line_num|
      if line.length > 120
        message_error = "#{@file_path}: line:#{line_num + 1} Line too long"
        @errors << message_error
      end
    end
  end

  def space_after_line
    @lines.each_with_index do |line, line_num|
      if line[-2] == ' ' && !line.strip.empty?
        message_error = "#{@file_path}: line:#{line_num + 1} Unexpected space at the end of the line"
        @errors << message_error
      end
    end
  end
end
