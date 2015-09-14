class String
  def analyze_text
    lower_range = "a".."z"
    upper_range = "A".."Z"
    digit_range = 0..9
    hash = Hash.new(0)

    each_char do |character|
      case (Integer(character) rescue character)
      when lower_range
        hash[:lowercase] += 1
      when upper_range
        hash[:uppercase] += 1
      when digit_range
        hash[:digit] += 1
      else
        hash[:special] += 1
      end
    end

    "Lowercases: #{hash[:lowercase]}\nUppercases: #{hash[:uppercase]}\nDigits: #{hash[:digit]}\nSpecial Characters: #{hash[:special]}"
  end
end

