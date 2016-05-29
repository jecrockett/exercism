require 'pry'

class Array

  def accumulate(&block)
    output = []
    self.each do |value|
      output << block.call(value)
    end
    output
  end

end
