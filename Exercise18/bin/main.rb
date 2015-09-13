require "time"
require_relative "../lib/time_addition.rb"

timeAddition = TimeAddition.new
puts "Enter your time inputs"
puts timeAddition.add_time(gets.chomp)

