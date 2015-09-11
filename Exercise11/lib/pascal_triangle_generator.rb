class PascalTriangleGenerator
  def initialize(input)
    @input = input + 1
    generate_pascal_triangle_for { |row_array| puts row_array.join(" ").center(50, " ") }
  end

  def generate_pascal_triangle_for
    if @input < 1
      warn
    else
      row_array = [1]
      @input.times do |counter|
        yield row_array = counter >= 1 ? row_array.unshift(0).push(0).each_cons(2).map { |first_value, second_value| first_value + second_value } : row_array
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

