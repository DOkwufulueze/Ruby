require_relative "../lib/string.rb"

puts "Enter a text to search"
text = gets.chomp
puts "Enter a search term"
term = gets.chomp
puts text.search(term)

