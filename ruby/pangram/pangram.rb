require 'set'

module Pangram

  def self.is_pangram?(str)
    str.delete!(' ."')
    str.downcase.chars.to_set.length == 26
  end

end
