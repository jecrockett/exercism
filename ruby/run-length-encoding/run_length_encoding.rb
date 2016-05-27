require 'pry'

module RunLengthEncoding

  def self.encode(input)
    output = ''
    occurances = 1
    previous = nil

    input.chars.each do |letter|
      binding.pry
      if previous.nil?
      elsif previous == letter
        occurances += 1
      else
        binding.pry
        if occurances == 1
          output << previous
        else
          output << "#{occurances}#{previous}"
          occurances = 1
        end
      end
      previous = letter
    end
    output
  end

end
