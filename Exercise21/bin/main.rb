require_relative "../lib/name.rb"

name = Name.new
puts "Enter your name in the order: Firstname Lastname. Capitalize your Firstname"
input = gets.chomp.split(/[\s,.]+/)
firstname = input[0]
lastname = input[1]
name.firstname = firstname
name.lastname = lastname
name.check_blank
name.check_capital
puts name.output

