class Customer
  attr_accessor :account_number, :balance
  def initialize(name) 
    @name = name
    @account_number = 1234567890
    @balance = 1000.0
  end

  def assign_new_account_number
    @account_number += 1
  end

  def deposit(how_much)
    @balance += how_much
  end

  def validate_withdrawal(how_much)
    @balance >= how_much ? withdraw(how_much) : warn_of_insufficient_funds
  end

  def withdraw(how_much)
    @balance -= how_much
    true
  end

  def show_details
    "Account Details:\n\nName: #{@name}\nAccount Number:#{account_number}\nBalance: #{balance}"
  end

  def warn_of_insufficient_funds
    false
  end

  def warn_of_invalid_transaction
    abort ":::Invalid Transaction!!!" 
  end

  def end_banking
    abort ":::Thank you for Banking with us."
  end
end

