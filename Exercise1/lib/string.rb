class String
  def show_occurrences
    occurrences = Hash.new(0)
    self.each_char { |character| occurrences[character] += 1 }
    occurrences.each { |item| yield "#{item[0]} \t\t #{item[1]}" }
  end
end

