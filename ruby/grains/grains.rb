require 'pry'

module Grains

  def self.square(num)
    grains = 1

    (num-1).times do
      grains = grains * 2
    end

    grains
  end

  def self.total
    self.square(65) - 1
  end
end
