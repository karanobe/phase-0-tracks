#Prompt the designer/user for info:
puts "Client Data Form"
puts "Client's name:"
client_name = gets.chomp.capitalize
puts "Client's age:"
client_age = gets.chomp
puts "Number of children:"
client_children = gets.chomp
puts "Decor theme:"
client_decor_theme = gets.chomp
puts "Client's favorite snack:"
client_snack = gets.chomp
puts "How many homes does the client own:"
client_number_of_homes = gets.chomp

#Convert any user input to the appropriate data type.
client_form = {
  name: "#{client_name}",
  age: "#{client_age}",
  children: "#{client_children}",
  decor: "#{client_decor_theme}",
  snack: "#{client_snack}",
  homes: "#{client_number_of_homes}"
}

#Print the hash back out to the screen when the designer has answered all of the questions.
puts "Here is your current client form:"
puts client_form.values

#Give the user the opportunity to update a key 
puts "Would you like to update any fields?(y/n)"
update = gets.chomp

if update == "y"
  puts "Which field? Pick the one you want to change:"
    puts client_form.keys
    change_key = gets.chomp
  puts "What do you want to change it to?"
    change_value = gets.chomp
    client_form[:"#{change_key}"] = "#{change_value}"
    puts "Okay, here is your final client form."

elsif update == "n"
  puts "Okay, here is your final client form."

else
end

#Print the latest version of the hash, and exit the program.
p client_form
