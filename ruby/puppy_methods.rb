class Puppy

  def fetch(toy)
    puts "Puppy: I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times {puts "Puppy: Woof!"}
  end

  def roll_over()
    puts "Owner: Roll over pup!"
    puts "Puppy: *rolls over*"
  end

  def dog_years(age)
    dog_years = age * 7
    puts "Owner: Our dog is #{dog_years} dog years old."
  end

  def high_five()
    puts "Owner: Gimme five!"
    puts "Puppy: *gives high-five*"
  end

  def initialize
    puts "Initialize new puppy instance ..."
  end
end

# ----------------------------------------------------------------------------
class Superheroes

  def initialize()
    puts "Initialize new superhero instance ..."
  end

  def beat
    puts "Look! Its a superhero!!!!"
    puts "He is BEATING THE BAD GUYS!!"
  end

  def save(number)
    puts "He just saved #{number} damsels in distress!!!!" unless number == 1
    if number == 1
      puts "He just saved a damsel in distress!!!"
    end


  end

end
# ----------------------------------------------------------------------------
Tyrion = Puppy.new
Tyrion.fetch("ball")
Tyrion.speak(5)
Tyrion.roll_over
Tyrion.dog_years(4)
Tyrion.high_five
# ----------------------------------------------------------------------------
super_array = []

2.times do
  puts "Give me a superhero name."
  super_name = gets.chomp
  super_name = Superheroes.new
  super_array.push(super_name)
end

super_array.each do |superhero|
  puts superhero.beat
  puts superhero.save(14)
end





