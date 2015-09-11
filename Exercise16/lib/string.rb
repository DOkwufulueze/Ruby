class String
  def search(term)
    count = 0
    modified = self.gsub(/#{term}/i) do |found|
      count += 1
      "(#{found})"
    end

    "#{modified}\nTotal number of occurrence: #{count}"
  end
end

