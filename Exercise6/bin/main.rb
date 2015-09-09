require_relative "../lib/bike.rb"

bike = Bike.new("Yamaha", 135000, "Yamaha Co. Ltd")
puts bike.show_contents
puts "Change bike price"
bike.set_new_price(gets.chomp.to_i)
puts bike.show_contents

