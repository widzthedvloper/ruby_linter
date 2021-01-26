#!/usr/bin/env ruby
require_relative 'lib/check_format'

msg = FormatChecker.new(ARGV.first)

msg.check_camel_case
msg.space_btw_methods
msg.line_length
msg.space_after_line
if !msg.errors.empty?
  puts msg.errors
  puts "This file contains #{msg.line_number} lines of code"
else
  puts "there's no offenses in this file"
end
