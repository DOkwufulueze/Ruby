require "time"
require_relative "../lib/time_addition.rb"
include TimeAddition

puts "Enter your time inputs"
puts add_time(gets.chomp)

