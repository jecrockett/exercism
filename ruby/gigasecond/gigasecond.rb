require 'time'

module Gigasecond

  def self.from(start_time)
    Time.at(start_time.to_i + (10**9))
  end

VERSION=1
end
