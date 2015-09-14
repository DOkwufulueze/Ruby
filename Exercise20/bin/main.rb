require_relative "../lib/integer.rb"

puts "Enter a number to find the factorial"
input = gets.chomp.to_i
puts "#{input}! = #{input.factorial}"

