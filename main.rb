#!/usr/bin/env ruby
require_relative 'lib/check_format'

msg = FormatChecker.new(ARGV.first)

puts msg.lines
puts msg.line_number
