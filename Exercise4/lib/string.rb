class String
  def check_if_palindrome
    until (self.match(/q/i)) do
      puts self.reverse == self ? "#{self} IS a Palindrome" : "#{self} is NOT a Palindrome"
      repeat_input_entry
    end

    abort 'Thanks for checking. BYE...'
  end

  def repeat_input_entry
    puts 'Enter a text to test if it\'s a Palindrome '
    gets.chomp.check_if_palindrome
  end
end

