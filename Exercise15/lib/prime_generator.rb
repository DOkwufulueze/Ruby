class PrimeGenerator
  def generate_primes(digit)
    (2..digit).step(1) do |current_digit|
      yield current_digit if current_digit.prime?
    end
  end
end

