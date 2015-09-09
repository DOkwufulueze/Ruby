class Fixnum
  def each_fibonacci
    pivot_number = 1
    second_number = 1
    while pivot_number <= self
      yield pivot_number
      temporary_number_holder = pivot_number + second_number
      pivot_number = second_number
      second_number = temporary_number_holder
    end
  end
end
