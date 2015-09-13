require_relative "negative_number_error.rb"

class Integer
  def factorial
    raise NegativeNumberError, ":::Invalid Input (#{self}): Negative Number Supplied" if self < 0
    (1..(self.zero? ? 1 : self)).inject(:*)
  end
end

