require_relative "../lib/file_manipulation.rb"

puts "Enter the name of your choice file to read from"
file_manipulation = FileManipulation.new
file_manipulation.csv_file = gets.chomp

begin
  file_manipulation.manipulate
rescue Exception => error_object
  puts "#{error_object.message}\n\n#{error_object.backtrace}"
end


