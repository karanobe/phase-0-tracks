# OPERATION IRONSUIT EXPLOSION

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
# sqlite3 somedatabase.db - from terminal 
db = SQLite3::Database.new("ironman_suits.db")
db.results_as_hash = true


# learn about fancy string delimiters
create_table_command = <<-SQL
  CREATE TABLE IF NOT EXISTS suits(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  suit_number INT,
  color VARCHAR(255),
  weaponized BOOLEAN
);
SQL


# create a Ironman Suit table (if it's not there already)
db.execute(create_table_command)

# add a test suit
# db.execute("INSERT INTO suits (name, suit_number, color, weaponized) VALUES ('Mark One', 1, 'silver', 'true');")

# add LOOOOTS of suits!
# so. many. suits.
# SuitExplosion

def create_suit(db, name, suit_number, color)
  db.execute("INSERT INTO suits (name, suit_number, color, weaponized) VALUES (?, ?, ?, ?);", [name, suit_number, color, "false"])
end

100.times do
  create_suit(db, Faker::Name.name, Faker::Number.between(2, 100), Faker::Color.color_name)
end

def weaponize(db, index)
  db.execute("UPDATE suits SET weaponized = 'true' WHERE id = #{index};")
end



# explore ORM by retrieving data0

suits = db.execute("SELECT * FROM suits")
puts "Hello Mr. Tony Stark. I have developed a list for you, of the 100 Ironman suits you created:"
suits.each do |suits|
  puts "INDEX: #{suits['id']}
  Suit Name: #{suits['name']}
  Number: #{suits['suit_number']}
  Suit color: #{suits['color']}
  weaponized: #{suits['weaponized']}
  "
end
puts "Would you like to weaponize any of them? Please select the index number of the suit you want to weaponize."
user_input = gets.chomp
weaponize(db, user_input)


weaponized_suits = db.execute("SELECT * FROM suits WHERE weaponized='true'")
weaponized_suits.each do |suits|
  puts "INDEX: #{suits['id']}
  Suit Name: #{suits['name']}
  Number: #{suits['suit_number']}
  Suit color: #{suits['color']}
  weaponized: #{suits['weaponized']}
  "
end
