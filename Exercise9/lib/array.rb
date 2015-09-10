class Array
  def make_hash
    hash = Hash.new { |hash, key| hash[key] = [] }

    for item in self do
      modified_item = Integer(item) rescue item
      hash[item.length].push(modified_item)
    end

    hash
  end
end

