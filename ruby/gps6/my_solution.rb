# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative is a more efficient way to find data in your current 
# directory, relative to the file that contains the require_relative statement.
# Require is used to locate data from an external source. You have to designate
# a path to find that data.

require_relative 'state_data'

class VirusPredictor

# Initializes a new instance. Takes state, population density, and population as 
# an argument, and assigns them instance variables.

  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[state_of_origin][:population]
    @population_density = STATE_DATA[state_of_origin][:population_density]
  end

# Runs the two methods mentioned: predicted_deaths and speed_of_spread.

  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

private  

# Calculates the number of deaths using the population density and population, specific to each state.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    return number_of_deaths = (@population * rate).floor
  end

# Calculates the speed of spread of virus using the population density for each state.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, data|
  state = VirusPredictor.new(state_name)
  state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# 
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# 
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# 
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# 1. While the STATE_DATA hash is holding the key value (states) as a string, it is holding the population data 
# has a variable. This makes it easier to access that data when it is called in the methods.

# 2. Require_relative is a more efficient way to find data in your current 
# directory, relative to the file that contains the require_relative statement.
# Require is used to locate data from an external source. You have to designate
# a path to find that data.

# 3. Some ways to iterate through a hash include the (.each) built-in method and the (.sort.each) built in methods. 
# This will allow you to iterate through each key value in the hash and call it as an instance of the class. You can
# even filter through a specific key values and call it.

# 4. When refactoring virus_effects, I realized that all the methods were using local variables as well as instance variables. As a result,
# when refactoring, I decided to get rid of the local variables and exclusively used instance variables when calling my methods in order to 
# keep the code clean.

# 5. In this challenge, refactoring was the major concept that was solidified for me! On first glance, the code seemed pretty 
# clean and concise. However, when refactoring, our GPS Guide John, showed us multiple things to consider when cleaning up our code. 
# Consequently, those different methods he taught us came in handy, and our code was effectively less redundant, readable, and efficient. 
