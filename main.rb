#!/usr/bin/env ruby
require_relative 'lib/check_format'

msg = FormatChecker.new(ARGV.first)

msg.check_camel_case
msg.space_btw_methods
msg.last_empty_line
msg.line_length
puts msg.errors
puts msg.line_number
