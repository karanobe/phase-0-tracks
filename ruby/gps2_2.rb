# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Separate each item at the " ", start an array
  # set default quantity
  # Array of items and their corresponding default quanities go into a hash
  # print the list to the console [can you use one of your other methods here?]

# output: [what data type goes here, array or hash?] Hash = {items, quantities}


# DRIVER CODE for create list method


#create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name; quantity


# Ask user, "Here is the list, #{list}, Do you want to the list."
# steps: user input = gets.chomp
# Insert user input into hash. Ask for quantity (integer), insert quantity in as value (quantity).
# Loop. Repeat until user types 'done'
# output: Hash of updated list {items, quantities}

# Method to remove an item from the list
# input: Hash

# steps: Ask user "Do you want to take anything out of the list?"
# user input = gets.chomp
# IF user_input == any item in the KEY of the hash, remove that item (.delete?)
# Loop. Repeat until user types 'done'
# output: Hash - deleted item

# Method to update the quantity of an item
# input: Hash
# steps: Ask user "Do you want to update the quantities of any of the items?"
# user input should be the key (item) = gets.chomp
# Display key and value (item and quantity). Ask user to assign new quantity (integer), new quantity replaces old quantity
# Loop. Repeat until user types 'done'
# output: Hash with quantity(or quantities) updated

# Method to print a list and make it look pretty
# input: Hash
# steps: Puts statement "You need #{quantity} of #{item}."
# output: Each item and quantity in hash printed as a puts statement until there are no more items.

items_to_list = "carrots apples cereal pizza"

def create_list(items_to_list)
  grocery_list = {}
  split_food = items_to_list.split(" ")
  split_food.each {|food| grocery_list.store(food, 1)}
  grocery_list
end

grocery_list = create_list(items_to_list)

def add_item_to_list(grocery_list, new_item, quantity)
 grocery_list.store(new_item, quantity)
 grocery_list
end

#add_item_to_list(grocery_list, "candy", 2)

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end
#remove_item(grocery_list, "carrots")

def update_quantity(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list
end

#update_quantity(grocery_list, "cereal", 45) 

def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item}, qty: #{quantity}"
  end
end

#p print_list(grocery_list)



# Driver Code
items_to_list = "carrots apples cereal pizza"
grocery_list(items_to_list)
print_list(grocery_list)
add_item_to_list(grocery_list, "lemonade", 2)
print_list(grocery_list)
add_item_to_list(grocery_list,"tomatoes", 3)
print_list(grocery_list)
add_item_to_list(grocery_list, "onions", 1)
print_list(grocery_list)
add_item_to_list(grocery_list, "ice cream", 4)
print_list(grocery_list)
remove_item(grocery_list, "lemonade")
print_list(grocery_list)
update_quantity(grocery_list, "ice cream", 1)
print_list(grocery_list)


# Commented Reflection
# 1. I think that writing a detailed pseudocode allows you to automatically figure out 
# exactly what built-in method you may need. In addition, instead of being overwhelmed 
# by the number of steps required to get your code functional, pseudocode allows you to 
# give yourself a step-by-step approach that is easier to follow. 
# 2. An array is like a collection of similar variables, grouped together. A hash takes 
# it one steps further and more specific, because it bundles things together based on their 
# key, but the corresponding values can be different. With an array, you would be collecting 
# simple data, whereas, a hash could let you gather specifics of that data.
# 3. The method will return the last output that you designated. For example, if the default 
# output of the last variable inside your method is an array, the method will return an array.
# 4. You can pass strings, array, hashes, integers, and booleans into methods.
# 5. You can pass information between methods as an argument by calling the method as a variable
# within another method.
# 6. Passing information through methods as arguments was a concept that was solified in this challenge. 
# One source of confusion for me in this challenge was how to feed information into a hash. Passing a 
# string in an a key variable for a hash was a little confusing to me.

