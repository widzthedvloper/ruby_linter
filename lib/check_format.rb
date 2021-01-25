require_relative 'read_file'
class FormatChecker
  attr_reader :file, :lines, :line_number

  def initialize(file_path)
    @file = ReadFile.new(file_path)
    @lines = @file.lines
    @line_number = @file.line_number
  end
end
