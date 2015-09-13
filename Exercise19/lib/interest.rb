class Interest
  attr_accessor :principal, :time
  RATE = 0.1

  def initialize
    if block_given?
      yield self
    else
      raise ":::No block supplied"
    end
  end

  def compound_interest
    principal * ((1 + RATE) ** time)
  end

  def simple_interest
    principal * RATE * time
  end

  def difference
    compound_interest - simple_interest
  end
end

