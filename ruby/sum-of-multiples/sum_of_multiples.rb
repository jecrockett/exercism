class SumOfMultiples

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(upper_limit)
    multiples = @numbers.map do |num|
      val = num
      while val < upper_limit do
        return val
        val + num
      end
    end
    multiples.compact.reduce(:+) || 0
  end

end
