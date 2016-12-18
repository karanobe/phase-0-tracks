#Alias Manager
#Take a spy's real name (like Felicia Torres) and create a fake name
 #swap first and last name
def name_reverse(name)
  word = name.split(' ')
  word.reverse!
  reversed = word.join(' ')
end
 #change the vowels (a,e,i,o,u) to the next vowl in 'aeiou'
 #change the consonants to the next consonant in the alphabet
 #ex. 'a' would become 'u', 'u' would become 'a', and 'd' would become 'f'
 
def letter_advancer(reversed)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  reversed = reversed.downcase.split('')
  new_name = reversed.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    elsif consonants.include?(letter)
      consonants.rotate(1)[consonants.index(letter)]
    else
      letter
    end
  end
  new_name.join.upcase
end

#Provide user interface
#until user types "quit" loop

name_hash = {}
user_input = nil
until user_input == "quit"
  puts "Please enter a name, (type 'quit' to terminate the program):"
    user_input = gets.chomp 
    secret_agent_name = letter_advancer(name_reverse(user_input))
    puts "#{user_input} is also known as #{secret_agent_name}." unless user_input == "quit"
#store all the data in a hash 
    name_hash.store(user_input,secret_agent_name) unless user_input == "quit"
    if user_input == "quit"
      puts "Here are your results:"
      name_hash.each do |user_input,secret_agent_name|
        puts "#{user_input} is also known as #{secret_agent_name}."
          end
    end
end