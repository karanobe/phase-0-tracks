#module Shout
#  def self.yell_angrily(words)
#      words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#      words.upcase + "!!!!" + " :)"
#  end
#
#end
#
#words = "you're pregnant?"
#p Shout.yell_angrily(words)
#p Shout.yell_happily(words)

module Shout

  def scream_scared(words)
    words.upcase + "!!!!!!! OH MY GOD!!!!!"
  end

  def scream_crazy(crazy_words)
    crazy_words.upcase + "HA! HA! HA! HA!"
  end

end

class Damsel_in_distress
  include Shout
end

class Villain
  include Shout
end

spidermans_girlfriend = Damsel_in_distress.new
p spidermans_girlfriend.scream_scared("aaaahhhhhh")

doctor_octavious = Villain.new
p doctor_octavious.scream_crazy("you're dead spiderman")

  


