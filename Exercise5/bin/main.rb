require_relative '../lib/customer.rb'

customer = Customer.new("Okwufulueze Daniel")
puts customer.show_details
puts "Enter W to withdraw, D to deposit, V to View your Details, N to Open a new account, Q to quit"
input = gets.chomp

case

when input.match(/w/i)
  begin
    puts "How much do you want to withdraw?"
    amount = Float(gets.chomp)
  rescue
    puts ":::Invalid withdrawal amount. Please enter a number"
  else
    puts customer.validate_withdrawal(amount) ? "Withdrawal transaction completed" : ":::Insufficient Funds!"
    puts customer.show_details
  end

when input.match(/d/i)
  puts "How much do you want to deposit?"
  begin
    amount = Float(gets.chomp)
  rescue ArgumentError
    puts ":::Invalid deposit amount. Please enter a number"
  else
    customer.deposit(amount)
    puts customer.show_details
  end

when input.match(/n/i)
  customer.assign_new_account_number
  puts "Your new Account Number is: #{customer.account_number}"

when input.match(/v/i)
  puts customer.show_details

when input.match(/q/i)
  customer.end_banking
  
else
  customer.warn_of_invalid_transaction
end



