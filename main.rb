#!/usr/bin/env ruby
require_relative 'lib/check_format'

msg = FormatChecker.new(ARGV.first)

msg.check_camel_case
msg.space_btw_methods
msg.line_length
msg.space_after_line
puts msg.errors
puts msg.line_number
