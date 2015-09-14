require_relative "../lib/array.rb"

puts "Enter items to make an array of"
array = gets.chomp.gsub(/[\[\]\'\"]+/, "").split(/\W+/)
puts array.use_inject

