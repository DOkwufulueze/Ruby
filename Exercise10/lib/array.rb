class Array
  def make_hash
    hash = Hash.new { |hash, key| hash[key] = [] }

    for item in self do
      modified_item = Integer(item) rescue item
      hash[item.length].push(modified_item)
    end

    hash.group_by { |key, value| key.even? ? "even" : "odd" }
  end

  def use_inject
    make_hash.inject(Hash.new { |hash, key| hash[key] = [] }) do |hash, (key, value)|
      value.each {|item| hash[key].push(item[1])}
      hash
    end
  end
end

