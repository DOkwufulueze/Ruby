require_relative "../lib/pascal_triangle_generator.rb"

puts "Enter a digit to get the Pascal Triangle"
PascalTriangleGenerator.new(gets.chomp.to_i)

