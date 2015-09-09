require_relative('../lib/fixnum.rb')

puts 'fibonacci sequence up to 1000 is'
1000.each_fibonacci { |digit| puts digit }

