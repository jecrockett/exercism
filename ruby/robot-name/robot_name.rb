class Robot
  attr_accessor :names

  def initialize
    @name = set_name
  end

  def self.names
    @names ||= []
  end

  def set_name
    name  = ''
    name << ('A'..'Z').to_a.sample * 2
    name << (1..9).to_a.sample.to_s * 3

    validate(name)
  end

  def validate(name)
    if Robot.names.include?(name)
      set_name
    else
      Robot.names << name
      name
    end
  end

  def name
    @name ||= set_name
  end

  def reset
    @name = nil
  end

  VERSION = 1
end
