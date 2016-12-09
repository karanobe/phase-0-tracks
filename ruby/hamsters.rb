#hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
puts "What is the hamster's name?"
hamster_name = gets.chomp.capitalize


#volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
puts "What is the hamsters volume level from a scale of 1 to 10?"
volume_level = gets.chomp.to_i
#fur color
puts "What is the hamsters fur color?"
fur_color = gets.chomp
#whether the hamster is a good candidate for adoption
puts "Is the hamster a good candidate for adoption?"
adoption_opinion = gets.chomp
#estimated age
puts "what is the hamster's estimated age?"
estimated_age = gets.chomp.to_i

if estimated_age == 0 
  estimated_age = nil
end


puts "Your hamster's name is #{hamster_name}."
puts "Your hamster's volume is #{volume_level}."
puts "Your hamster's color is #{fur_color}."
puts "Your hamster's adoption status is #{adoption_opinion}."
puts "Your hamster's estimated age is #{estimated_age}."