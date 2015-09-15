class Array
  def make_hash
    hash = Hash.new { |hash, key| hash[key] = [] }

    for item in self do
      modified_item = Integer(item) rescue item
      hash[item.length].push(modified_item)
    end

    hash
  end

  def use_inject
    make_hash.inject(Hash.new { |hash, key| hash[key] = [] }) do |resulting_hash, (source_hash_key, source_hash_value)|
      source_hash_key.odd? ? resulting_hash["odd"].push(source_hash_value) : resulting_hash["even"].push(source_hash_value)
      resulting_hash
    end
  end
end

