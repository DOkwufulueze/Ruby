class PalindromeTester
  def check_if_palindrome(input)
    input.reverse == input ? "#{input} IS a Palindrome" : "#{input} is NOT a Palindrome"
  end
end

