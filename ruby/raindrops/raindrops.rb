require 'prime'

module Raindrops

  def self.convert(num)
    result = ''
    result << 'Pling' if self.primes(num).include?(3)
    result << 'Plang' if self.primes(num).include?(5)
    result << 'Plong' if self.primes(num).include?(7)
    return num.to_s if result.empty?
    result
  end

  def self.primes(num)
    Prime.prime_division(num).flatten
  end

  VERSION = 1
end
