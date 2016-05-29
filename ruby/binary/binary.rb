require 'pry'

class Binary

  def initialize(input)
    raise ArgumentError unless input_is_valid?(input)
    @input = input
    @output = []
  end

  def to_decimal
    @input.length.times do |i|
      binary_value = (@input[-(i+1)] * 2**i)
      add_to_output(binary_value)
    end
    @output.reduce(:+)
  end

  def add_to_output(value)
    value.to_s.chars.each do |num|
      @output << num.to_i
    end
  end

  def input_is_valid?(input)
    input.chars.all? { |num| num == "0" || num == "1" }
  end

VERSION = 2
end
