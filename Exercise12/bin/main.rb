require_relative "../lib/string.rb"

puts "Enter a text to see the number of various characters you used"
puts "\nYour text is analyzed as shown below\n\n#{gets.chomp.gsub(' ','').analyze_text}\n\n\n"

