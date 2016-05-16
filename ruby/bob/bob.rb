class Bob
  def initialize
  end

  def hey(text)
    return "Whoa, chill out!" if shouting?(text)
    return "Sure." if question?(text)
    return "Fine. Be that way!" if no_remark?(text)
    return "Whatever."
  end

  def question?(text)
    text[-1] == '?'
  end

  def shouting?(text)
    sanitized_text = text.gsub(/[^a-zA-Z]/, '')
    !sanitized_text.empty? && (sanitized_text.upcase == sanitized_text)
  end

  def no_remark?(text)
    text.strip.empty?
  end


end
