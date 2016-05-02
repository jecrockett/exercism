module Hamming
  def self.compute(string1, string2)
    raise ArgumentError, 'Strand lengths must match.' if (string1.length != string2.length)

    count = 0;
    string1.chars.each_with_index do |letter, index|
      count += 1 if (letter != string2[index])
    end
    count
  end

  VERSION = 1
end
