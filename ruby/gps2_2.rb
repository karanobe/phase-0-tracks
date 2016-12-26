# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Separate each item at the " ", start an array
  # set default quantity
  # Array of items and their corresponding default quanities go into a hash
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] Hash = {items, quantities}

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