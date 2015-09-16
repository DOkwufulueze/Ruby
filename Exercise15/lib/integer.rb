class Integer
  def generate_primes
    if block_given?
      (2..self).step(1) do |current_digit|
        yield current_digit if current_digit.prime?
      end
    else
      puts ":::Please supply a block"
    end
  end
end

