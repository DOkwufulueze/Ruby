class Integer
  def factorial
    (1..(self.zero? ? 1 : self)).inject(:*)
  end
end

