require 'pry'

class SumOfMultiples

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    multiples = []
    add_to(multiples, limit)
    multiples.compact.uniq.reduce(:+) || 0
  end

  def add_to(multiples, limit)
    @numbers.each do |num|
      val = num
      while val < limit do
        multiples << val
        val += num
      end
    end
  end

end
