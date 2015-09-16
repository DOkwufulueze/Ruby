require "prime"
require_relative "../lib/integer.rb"

puts "Enter a number to generate Prime numbers up to\n"
input = gets.chomp.to_i
puts "\n\nPrime numbers generated from your input are:\n"
input.generate_primes { |prime| puts prime}

