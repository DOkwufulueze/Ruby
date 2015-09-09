class String
  def modify
    puts ":::Your text '#{self}' has been modified to #{self.gsub(/[aeiou]/i, '*')}."
  end
end

