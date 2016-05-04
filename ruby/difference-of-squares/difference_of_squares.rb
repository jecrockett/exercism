class Squares

  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum**2
  end

  def sum_of_squares
    squared_numbers.reduce(:+) || 0
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

    def sum
      numbers.reduce(:+) || 0
    end

    def numbers
      (1..@num).to_a
    end

    def squared_numbers
      numbers.map { |n| n**2 }
    end

    def squared_number_differences
      squared_numbers.map { |num| num - @num }
    end

  VERSION = 2
end
