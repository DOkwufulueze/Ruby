require_relative "../lib/integer.rb"

puts "Enter a number to find the factorial (Non +ve integers will be converted to 0)"
input = gets.chomp.to_i
puts "#{input}! = #{input.factorial}"

