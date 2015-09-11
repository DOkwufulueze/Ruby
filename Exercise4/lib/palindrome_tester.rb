class PalindromeTester
  def enter_input
    puts 'Enter a text to test if it\'s a Palindrome '
    input = gets.chomp
    check_if_palindrome(input)
  end

  def check_if_palindrome(input)
    until (input.match(/q/i)) do
      puts input.reverse == input ? "#{input} IS a Palindrome" : "#{input} is NOT a Palindrome"
      enter_input
    end

    abort 'Thanks for checking. BYE...'
  end
end

