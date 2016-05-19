require 'pry'

class Phrase
  def initialize(input)
    @input = input.gsub(',', ' ').gsub(/[^ a-zA-Z0-9']/, '').downcase

    remove_quotes
  end

  def word_count
    @input.split.each_with_object({}) do |word, obj|
      obj[word] ? obj[word] += 1 :
                  obj[word] = 1
    end
  end

  def remove_quotes
    @input = @input.gsub(" '", " ").gsub("' ", " ")
  end

  VERSION = 1
end
