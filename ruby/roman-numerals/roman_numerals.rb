class Fixnum

  NUM_TO_ROMAN_KEY = {  1000 => "M",
                        900 => "CM",
                        500 => "D",
                        400 => "CD",
                        100 => "C",
                        90 => "XC",
                        50 => "L",
                        40 => "XL",
                        10 => "X",
                        9 => "IX",
                        5 => "V",
                        4 => "IV",
                        1 => "I"
                      }

  def to_roman
    n = self
    result = ''
    NUM_TO_ROMAN_KEY.each do |num, roman|
      if n >= num
        result << roman * (n / num)
        n %= num
      end
    break if n == 0
    end
    result
  end

VERSION = 1
end
