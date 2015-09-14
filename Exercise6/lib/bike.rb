require_relative "../lib/vehicle.rb"

class Bike < Vehicle
  def initialize(name, price, dealer)
    @name = name
    @price = price
    @dealer = dealer
    @price_flag = 0 # Price hasn't been updated yet
  end

  def show_content
    "\n#{@price_flag == 1 ? 'Updated Content': 'Content'} of Bike\nName: #{@name}\n#{@price_flag == 1 ? 'New Price': 'Price'}: #{@price}\nDealer: #{@dealer}\n\n"
  end
end

