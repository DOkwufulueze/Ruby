require_relative "../lib/array.rb"

puts "Enter items to make an array of"
array = gets.chomp.split(/\W+/)
puts array.make_hash

