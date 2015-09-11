require_relative('../lib/string.rb')

puts "Enter text to see number of occurrences of various alphabet letters"
text = gets.chomp.gsub(' ','')
puts "Character \t Frequency"
text.show_occurrences { |item| puts item }


