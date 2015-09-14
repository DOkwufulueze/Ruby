class String
  def modify
    ":::Your text '#{self}' has been modified to #{gsub(/[aeiou]/i, '*')}."
  end
end

