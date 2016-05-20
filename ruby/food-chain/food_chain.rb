require 'pry'

module FoodChain

  def self.song
    output = ''
    previous_animal = nil
    starting_verse = ["", nil, "I don't know why she swallowed the fly. Perhaps she'll die.", "\n"]

    self.animals.each_with_object(starting_verse) do |animal, verse|
      verse[0] = "I know an old lady who swallowed a #{animal}."
      verse[1] = self.add_comment(animal)

      verse.insert(2, self.add_newly_swallowed(animal, previous_animal)) unless (animal == 'fly')
      verse[2].insert(-2, " that wriggled and jiggled and tickled inside her") if animal == 'bird'
      verse = verse.first(2).push("") if animal == 'horse'

      output << verse.compact.join("\n")

      previous_animal = animal
    end
    puts "!!!!!!!!!!!!!!!!!!!!!\n" + output + "!!!!!!!!!!!!!!!!!!!!!!!"
    output
    # for animal in self.animals do
    #
    # end
  end

  def self.add_comment(animal)
    case animal
    when 'fly' then nil
    when 'spider' then 'It wriggled and jiggled and tickled inside her.'
    when 'bird' then 'How absurd to swallow a bird!'
    when 'cat' then 'Imagine that, to swallow a cat!'
    when 'dog' then 'What a hog, to swallow a dog!'
    when 'goat' then 'Just opened her throat and swallowed a goat!'
    when 'cow' then "I don't know how she swallowed a cow!"
    when 'horse' then "She's dead, of course!"
    end
  end

  def self.add_newly_swallowed(animal, previous_animal)
    "She swallowed the #{animal} to catch the #{previous_animal}."
  end

  def self.animals
    ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse']
  end

end
