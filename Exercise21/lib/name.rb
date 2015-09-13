require_relative "blank_input_error.rb"
require_relative "non_capital_input_error.rb"

class Name
  attr_accessor :firstname, :lastname

  def check_blank
    raise BlankInputError, ":::Empty input Error" unless firstname && lastname
  end

  def check_capital
    raise NonCapitalInputError, ":::Non Capital Firstname Error" unless firstname == firstname.capitalize
  end

  def output
    ":::Valid Input. Your name is: #{firstname} #{lastname}"
  end
end

