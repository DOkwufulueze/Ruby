class Fixnum
  def each_fibonacci
    pivot_number, second_number = 1, 1
    while pivot_number <= self
      yield pivot_number
      pivot_number, second_number = second_number, pivot_number + second_number
    end
  end
end
