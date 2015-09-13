require_relative "../lib/interest.rb"

puts "Enter Principal and Time in the order requested (Default if you supply nothing is 1.0 for each)"
input = gets.chomp.split(/[\s,]+/)
principal = Float(input[0]) rescue 1.0
time = Float(input[1]) rescue 1.0
interest = Interest.new do |the_class|
  the_class.principal = principal
  the_class.time = time
end

puts "Compund Interest: #{interest.compound_interest}\n\nSimple Interest: #{interest.simple_interest}\n\nDifference: #{interest.difference}"

