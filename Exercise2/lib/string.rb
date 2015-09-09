class String
  def modify
    ":::Your text '#{self}' has been modified to #{self.gsub(/[aeiou]/i, '*')}."
  end
end

