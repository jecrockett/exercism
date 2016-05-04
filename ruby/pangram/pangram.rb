require 'set'

module Pangram

  def self.is_pangram?(str)
    sanitized_str = str.downcase.gsub(/[^a-z]/, '')
    sanitized_str.chars.to_set.length == 26
  end

  VERSIOn = 1
end
