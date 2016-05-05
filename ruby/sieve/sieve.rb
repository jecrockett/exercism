require 'prime'

class Sieve

  def initialize(num)
    @num = num
  end

  def primes
    result = []
    Prime.each(@num) do |prime|
      result << prime
    end
    result
  end

end
