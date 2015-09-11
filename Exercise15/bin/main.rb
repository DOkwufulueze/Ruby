require "prime"
require_relative "../lib/prime_generator.rb"

puts "Enter a number to generate Prime numbers up to\n"
generator = PrimeGenerator.new
input = gets.chomp.to_i
puts "\n\nPrime numbers generated from your input are:\n"
generator.generate_primes(input) { |prime| puts prime}

