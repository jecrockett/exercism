require 'pry'

class SumOfMultiples

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(upper_limit)
    multiples = []
    @numbers.each do |num|
      val = num
      while val < upper_limit do
        multiples << val
        val += num
      end
    end
    multiples.compact.uniq.reduce(:+) || 0
  end

end
