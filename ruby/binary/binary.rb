class Binary

  def initialize(input)
    @input = input
    @output = []
  end

  def to_decimal
    @input.length.times do |i|
      @output << (@input[-(i+1)] * 2**i)
    end
    @output.reduce(:+).to_i
  end

end
