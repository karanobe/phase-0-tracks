# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

class Hangman  
  
  def initialize(game_word)
    @game_word = game_word.downcase
    @guess_count = 0
    @guess_limit = game_word.length
    @letters_bucket = []
    @feedback_array = []
  end
  
  def about
    p @game_word
    p @guess_count
    p @guess_limit
    p @letters_bucket
    p @feedback_array
  end
    
  def store(guessed_letters)
    if @letters_bucket.include?(guessed_letters)
        puts "You already picked that letter. Try again!"
        @guess_count = @guess_count - 1
    else
      @letters_bucket.push(guessed_letters)
    end
    @letters_bucket
  end
  
  def feedback
    @game_word.chars.each do |char|
      if @letters_bucket.include?(char)

        @feedback_array.push(char)
      else
        @feedback_array.push("*")
      end
     @feedback = @feedback_array.join
    end
    puts @feedback
    
  end

  def gametime
    puts "Player 2, it is your turn to guess a letter. You have #{@guess_limit + 2} tries."
    until @guess_count == (@guess_limit + 2) do
      store(gets.chomp)
      feedback
      @guess_count = @guess_count + 1
      if @feedback == @game_word then
        puts "YOU GUESSED IT!!!!!"
        puts "#{@feedback.upcase}!"
        break
      end

      puts "You have #{(@guess_limit - @guess_count) + 2} tries left!!"
      if @guess_count == (@guess_limit + 2) 
        puts "You failed. The word was #{@game_word}."
      end
      @feedback_array.clear
    end
   
  end
  
end  
  
#Driver Code
#user_2 = Hangman.new("kangaroo")
#user_2.store("a")
#user_2.store("o")
#user_2.store("k")
#user_2.feedback

puts "Welcome to Hangman. In this game, Player 1 sets the word, and player 2 guesses the letters."
puts "Player 1, please set the word."
game_word = gets.chomp.to_s
system "clear"
user_2 = Hangman.new(game_word)
user_2.gametime








