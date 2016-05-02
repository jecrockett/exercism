require 'pry'

module Complement
  CONVERTER = { 'C' => 'G',
                'G' => 'C',
                'T' => 'A',
                'A' => 'U' }


  def self.of_dna(string)
    string.length.times do |i|
      self.validate_input(string[i])
      string[i] = CONVERTER[string[i]]
    end
    string
  end

  def self.validate_input(letter)
    raise ArgumentError if !CONVERTER.keys.include?(letter)
  end

  VERSION = 3
end
