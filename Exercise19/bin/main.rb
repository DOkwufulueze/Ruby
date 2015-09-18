require_relative "../lib/interest.rb"

puts "Enter Principal (Default if you supply nothing is 1.0 for each)"
principal = Float(gets.chomp) rescue 1.0
puts "Enter Time (Default if you supply nothing is 1.0 for each)"
time = Float(gets.chomp) rescue 1.0
interest = Interest.new do |the_class|
  the_class.principal = principal
  the_class.time = time
end

puts "Compund Interest: #{interest.compound_interest}\n\nSimple Interest: #{interest.simple_interest}\n\nDifference: #{interest.difference}"

