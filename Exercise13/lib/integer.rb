class Integer
  def factorial
    (1..(zero? ? 1 : self)).inject(:*)
  end
end

