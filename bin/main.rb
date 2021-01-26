#!/usr/bin/env ruby
require_relative 'lib/check_format'

msg = FormatChecker.new(ARGV.first)
msg.show_result
if !msg.errors.empty?
  puts msg.errors
  puts "This file contains #{msg.line_number} lines of code"
else
  puts "there's no offenses in this file"
end
