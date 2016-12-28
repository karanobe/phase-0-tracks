class Santa

  attr_reader :name, :age, :ethnicity
  attr_accessor :gender

  def initialize(name, gender, ethnicity)
    puts "Initializing Santa instance..."
    @name = name
    puts "Name: #{@name}"
    @gender = gender
    puts "Gender: #{@gender}"
    @ethnicity = ethnicity
    puts "Ethnicity: #{@ethnicity}"
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Reindeer Ranking: #{@reindeer_ranking}"
    @age = rand(140)
    puts "Age: #{@age}"
    p "-------------------------------------------------------------------------------------------------------------------"
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(type_of_cookie)
    puts "That was a good #{type_of_cookie} cookie!"
  end
# Release 2
  def celebrate_birthday()
    new_age = @age + 1
    puts "#{@name} is now #{new_age}!"
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end
# Setter method
#  def gender=(new_gender)
#    @gender = new_gender
#  end

# Getter methods
#  def age
#    @age
#  end

#  def ethnicity
#    @ethnicity
#  end

end

santas = []
name_array = ["Kobe", "Lebron", "Allen", "Carmelo", "Ray", "Steve", "Charles", "Magic", "Larry", "Steph", "Blake", "Dennis", "Michael"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
10.times do 
  santas << Santa.new(name_array[rand(13)], example_genders[rand(7)], example_ethnicities[rand(7)])
end

p santas
santas[7].celebrate_birthday
p santas[7].get_mad_at("Dasher")
p santas[6].name
p santas[3].age 


# Driver code

#santa = Santa.new("male", "Indian")
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip")
#p santa.celebrate_birthday
#p santa.get_mad_at("Dasher")
#p santa.gender= "female"
#p santa.ethnicity
#p santa.age




