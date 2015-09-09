class String
  def make_hash
    occurrences = Hash.new(0)
    self.each_char { |character| occurrences[character] += 1 }

    occurrences
  end

  def show_occurrences
    self.make_hash.each { |item| puts "#{item[0]} \t\t #{item[1]}" }
  end
end

