class String
  def show_occurrences
    if block_given?
      occurrences = Hash.new(0)
      gsub(" ", "").each_char { |character| occurrences[character] += 1 }
      occurrences.each { |item| yield "#{item[0]} \t\t #{item[1]}" }
    else
      puts ":::Please supply a block"
    end
  end
end

