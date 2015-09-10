require_relative "../lib/array.rb"

puts "Enter numbers to make an array of"
array = gets.chomp.split(/\D+/).map(&:to_i)
puts "Enter a number to make an exponent"
exponent = gets.chomp.to_i
p "Elements of array #{array} raised to the power of #{exponent} produces array -> #{array.power(exponent)}"

