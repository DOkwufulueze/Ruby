class PascalTriangleGenerator
  def initialize(input)
    @input = input + 1
    generate_pascal_triangle { |row_array| puts row_array.join(" ").center(50, " ") }
  end

  def generate_pascal_triangle
    if block_given?
      if @input <= 1
        warn
      else
        row_array = [1]
        @input.times do |counter|
          yield row_array = counter >= 1 ? modify_row(row_array) : [1]
        end
      end
    else
      puts ":::Please supply a block"
    end
  end

  def modify_row(row_array)
    row_array.unshift(0)
            .push(0)
            .each_cons(2)
            .map { |first_value, second_value| first_value + second_value }
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

