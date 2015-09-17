module TimeAddition
  REGULAR_EXPRESSION = /^(([0-1]?\d)|(2?[0-3]))(:([0-5]\d)){2}$/
  
  def is_valid?(input)
    REGULAR_EXPRESSION =~ input
  end

  def add_time(time_inputs_string)
    time_inputs = time_inputs_string.split(/[\s,\.]+/)
    if (time_inputs.all? { |time| is_valid?(time) })
      modified_first = Time.parse(time_inputs[0])
      time_sum = time_inputs.map { |time| Time.parse(time) }.inject do |time_add, time|
        time_add += time.sec + time.min * 60 + time.hour * 3600
      end
      output_result(time_sum, modified_first)
    else
      puts ":::One or more of your time inputs has got a problem."
      repeat_input
    end
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

  def repeat_input
    puts "Enter your time inputs"
    add_time(gets.chomp)
  end
end

