require_relative '../lib/check_format'

describe FormatChecker do
  let(:data) { Array.new([]) }
  path = File.absolute_path('../ruby_linter/good_ruby.rb')
  msg_array = FormatChecker.new(path)
  describe '#show_result' do
    it 'It would expect a file name and retun and array of strings with all the contain of the file' do
      expect(msg_array.show_result).to be_an(Array)
    end
  end
end
