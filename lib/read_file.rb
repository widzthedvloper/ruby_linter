# rubocop:disable Style/RedundantBegin
class ReadFile
  attr_reader :file_path, :lines, :line_number

  def initialize(file_path)
    begin
      @file_path = file_path
      @lines = File.readlines(@file_path)
      @line_number = @lines.size
    rescue StandardError => e
      @lines = []
      puts "There's a problem with the path you provide #{e}"
    end
  end
end
# rubocop:enable Style/RedundantBegin
