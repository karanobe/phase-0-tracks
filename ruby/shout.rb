module Shout
  def self.yell_angrily(words)
      words + "!!!" + " :("
  end

  def self.yell_happily(words)
      words.upcase + "!!!!" + " :)"
  end

end

words = "you're pregnant?"
p Shout.yell_angrily(words)
p Shout.yell_happily(words)

