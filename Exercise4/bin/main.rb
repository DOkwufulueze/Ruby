require_relative('../lib/palindrome_tester.rb')

tester = PalindromeTester.new
puts 'Enter a text to test if it\'s a Palindrome '
input = gets.chomp

until input.match(/q/i)
  puts tester.check_if_palindrome(input)
  puts 'Enter a text to test if it\'s a Palindrome '
  input = gets.chomp
end

abort 'Thanks for checking. BYE...'

