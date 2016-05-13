module Year

  def self.leap?(date)
    return true if self.fourth_century?(date)
    return false if self.century?(date)
    return true if self.fourth_year?(date)
    false
  end

  def self.fourth_year?(date)
    date % 4 === 0 ? true : false
  end

  def self.century?(date)
    date % 100 === 0 ? true : false
  end

  def self.fourth_century?(date)
    date % 400 === 0 ? true : false
  end

  VERSION = 1
end
