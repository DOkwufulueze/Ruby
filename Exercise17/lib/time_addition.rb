class TimeAddition
  def validate(input)
    until input.match(/^(([0-1]?\d)|(2?[0-3]))(:([0-5]\d)){2}$/)
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
    time_hour = time_sum.hour.to_s.length > 1 ? time_sum.hour : "0#{time_sum.hour.to_i}"
    time_minute = time_sum.min.to_s.length > 1 ? time_sum.min : "0#{time_sum.min.to_i}"
    time_second = time_sum.sec.to_s.length > 1 ? time_sum.sec : "0#{time_sum.sec.to_i}"
    just_time = "#{time_hour}:#{time_minute}:#{time_second}"
    day = time_sum.day - modified_first.day
    if (day > 0)
      "#{day} #{day > 1 ? 'days' : 'day'} & #{just_time}"
    else
      "Same Day: #{just_time}"
    end
  end
end

