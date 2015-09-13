require "time"
require_relative "../lib/time_addition.rb"

timeAddition = TimeAddition.new
puts "Enter your first time"
first_input = timeAddition.validate(gets.chomp)
puts "Enter your second time"
second_input = timeAddition.validate(gets.chomp)
puts timeAddition.add_time(first_input, second_input)

