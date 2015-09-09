require_relative "../lib/array.rb"

array = [1, 2, 3, 4, 5, 6]
puts "Enter a number to make an exponent"
exponent = gets.chomp.to_i
p "Elements of array #{array} raised to the power of #{exponent} produces array -> #{array.power(exponent)}"

