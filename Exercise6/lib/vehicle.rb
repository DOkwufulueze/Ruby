class Vehicle
  def initialize(name, price)
    @name = name
    @price = price # Price hasn't been updated yet
    @price_flag = 0
  end

  def show_content
    "\n#{@price_flag == 1 ? 'Updated Contents': 'Contents'} of Vehicle\nName: #{@name}\n#{@price_flag == 1 ? 'New Price': 'Price'}: #{@price}\n\n"
  end

  def set_new_price(price)
    @price_flag = 1 #Track Price update by setting a flag for proper context when outputing message on price
    @price = price
  end
end

