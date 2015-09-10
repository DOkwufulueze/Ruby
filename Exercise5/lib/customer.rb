class Customer
  @@account_number = 1234567890
  @@customers = []
  @@hash = {}
  def initialize(name)
    check_customer_existence(name)   
  end

  def check_customer_existence(name)
    if (@@customers.detect { |hash| hash[:name] == name })
      warn_of_duplication(name)
    else
      @name = name
      @balance = 1000
      @@account_number += 1
      @account_number = @@account_number
      customer = {
        :name => name,
        :balance => @balance,
        :account_number => @account_number
      }
      @@customers.push(customer)
      @@hash = customer
      welcome_customer
    end    
  end

  def welcome_customer
    puts "Customer Details"
    show_details
    puts "Enter 'w' to withdraw, d to deposit, q to quit transaction, c to close application"
    perform_transaction
  end

  def show_details
    puts "Name: #{@name}"
    puts "Account Number:#{@account_number}"
    puts "Balance: #{@balance}"
  end

  def perform_transaction
    input = gets.chomp
    case
    when input.match(/w/i)
      withdraw
    when input.match(/d/i)
      deposit
    when input.match(/q/i)
      restart_banking
    when input.match(/c/i)
      end_banking
    else
      warn_of_invalid_transaction
    end
  end

  def deposit
    puts "How much do you want to deposit?"
    how_much = gets.chomp.to_i
    @balance += how_much
    @@hash[:balance] = @balance
    welcome_customer
  end

  def withdraw
    puts "How much do you want to withdraw?"
    how_much = gets.chomp.to_i
    @balance - how_much >= 0 ? @balance -= how_much : warn_of_insufficient_funds
    @@hash[:balance] = @balance
    welcome_customer
  end

  def warn_of_insufficient_funds
    puts ":::Insufficient Funds!!!"
    welcome_customer
  end

  def warn_of_duplication(name)
    puts "\n:::Customer #{name} already exists!!! See Details Below\n"
    @name = name
    @@hash = @@customers.detect { |hash| hash[:name] == name }
    reset_customer
    show_details
    restart_banking
  end

  def reset_customer
    @balance = @@hash[:balance]
    @account_number = @@hash[:account_number]
  end

  def warn_of_invalid_transaction
    puts ":::Invalid Transaction!!!" 
    welcome_customer
  end

  def restart_banking
    puts "Enter new Customer name"
    Customer.new(gets.chomp)
  end

  def end_banking
    abort ":::Thank you for Banking with us."
  end
end

