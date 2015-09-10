class PascalTriangleGenerator
  def initialize(input)
    @input = input
    generate_pascal_triangle_for { |row_array| puts row_array.join(" ").center(50, " ") }
  end

  def generate_pascal_triangle_for
    if @input < 1
      warn
    else
      yield row_array = [1]
      @input.times do
        row_array.unshift(0).push(0)
        yield row_array = row_array.each_cons(2).map { |first_value, second_value| first_value + second_value }
      end
    end
  end

  def warn
    puts ":::Please enter a Positive number greater than or equal to 1"
    restart_pascal
  end

  def restart_pascal
    puts "Enter a digit to get the Pascal Triangle"
    PascalTriangleGenerator.new(gets.chomp.to_i)
  end
end

