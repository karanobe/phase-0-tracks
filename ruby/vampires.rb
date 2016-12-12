puts "How many employees should we process?"
  number_of_employees = gets.chomp.to_i


until number_of_employees == 0
   
    puts "What is your name?"
      employee_name = gets.chomp
  
  if employee_name == "drake cula"
    puts "Definitely a vampire."
    number_of_employees -= 1
    next
    
  elsif
    employee_name == "Drake Cula"
    puts "Definitely a vampire."
    number_of_employees -= 1
    next
  elsif 
    employee_name == "tu fang"
    puts "Definitely a vampire."
    number_of_employees -= 1
    next
  elsif 
    employee_name == "Tu Fang"
    puts "Definitely a vampire."
    number_of_employees -= 1
    next
    
  else
  

  

    
    puts "How old are you?"
      employee_age = gets.chomp.to_i
    puts "What year were you born?"
      born_year = gets.chomp.to_i
      
      age_right = (2016 - born_year) == employee_age

    
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
      garlic_bread = gets.chomp
    
    puts "Would you like to enroll in the company’s health insurance? (y/n)"
      health_insurance = gets.chomp
      
    prompt = "> "
    puts "Do you have any allergies?"
    print prompt

while allergies = gets.chomp # loop while getting user input
  case allergies
  when "done"
    puts "Ok, no more questions!"
    break # make sure to break so you don't ask again
  when "sunshine"
    puts "Probably a vampire"
    break # and again
  else
    puts "Any more? If not, type 'done'."
    print prompt # print the prompt, so the user knows to re-enter input
  end
end
    
    
    if allergies == "sunshine"
        next
        number_of_employees -= 1
    end
      
    if age_right && (garlic_bread=="y" || health_insurance=="y")
      puts "Probably not a vampire."
    elsif
      (garlic_bread=="n" && health_insurance=="y") && !age_right
      puts "Probably a vampire."
   elsif
      (garlic_bread=="y" && health_insurance=="n") && !age_right
      puts "Probably a vampire."
    elsif
      garlic_bread=="n" && health_insurance=="n" && !age_right
      puts "Almost certainly a vampire."
    else 
      garlic_bread=="" || health_insurance==""
      puts "Results inconclusive."
      
    end
  number_of_employees -= 1
  end
  
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."








