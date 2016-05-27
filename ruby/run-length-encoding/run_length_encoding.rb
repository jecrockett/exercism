require 'pry'

module RunLengthEncoding

  def self.encode(input)
    output = ''
    occurances = 1

    input.length.times do |i|
      if input[i] == input[i + 1]
        occurances += 1
      else
        occurances == 1 ?
          output << input[i] :
          output << "#{occurances}#{input[i]}"
        occurances = 1
      end
    end
    output
  end

  def self.decode(input)
    output = ''
    number = "1"
    previous_is_number = false

    input.length.times do |i|
      if input[i].to_i > 0
        previous_is_number ?
          number << input[i] :
          number = input[i]

        previous_is_number = true
      else
        output << input[i] * number.to_i

        number = "1"
        previous_is_number = false
      end
    end
    output
  end

VERSION = 1
end
