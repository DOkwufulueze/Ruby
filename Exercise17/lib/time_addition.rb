class TimeAddition
  def validate(input)
    until input.match(/(([0-1]?\d)|(2?[0-3])):([0-5]\d):([0-5]\d)/)
      puts ":::Please enter a valid time"
      input = gets.chomp
    end

    input
  end

  def add_time(first_input, second_input)
    modified_first = Time.parse(first_input)
    modified_second = Time.parse(second_input)
    time_sum = modified_first + modified_second.sec + modified_second.min * 60 + modified_second.hour * 3600
    output_result(time_sum, modified_first)
  end

  def output_result(time_sum, modified_first)
    just_time = "#{time_sum.hour}:#{time_sum.min}:#{time_sum.sec}"
    day = time_sum.day - modified_first.day
    if (day > 0)
      "#{day} #{day > 1 ? 'days' : 'day'} & #{just_time}"
    else
      "Same Day: #{just_time}"
    end
  end
end

