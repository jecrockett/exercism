
class Squares

  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum**2
  end

  def sum_of_squares
    squared_numbers.reduce(:+)
  end

  def difference
    squared_number_differences.reduce(:+)
  end

  private

    def sum
      numbers.reduce(:+)
    end

    def numbers
      (1..@num).to_a
    end

    def squared_numbers
      numbers.map { |n| n**2 }
    end

    def squared_number_differences
      previous = nil
      squared_numbers.map do |num|
        if previous.nil?
          previous = num
          nil
        else
          num - previous
        end
      end.compact
    end

end
