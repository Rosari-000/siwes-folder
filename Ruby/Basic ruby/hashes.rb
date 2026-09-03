#Creating Hash
#=> Hash Literal 
my_hash = { "name" => "Rosari", "age" => 25 }

#=>Hash.new
my_hash = Hash.new

#Keys can be anything 
hash = { 9 => "nine", :six => 6 }

#Accessing Values
shoes = { "summer" => "sandals", "winter" => "boots" }
shoes["summer"]  

#If the key doesnt exist
shoes["hiking"]  


#safer option to access error 
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"


#Adding and changing Data
shoes["fall"] = "sneakers"
shoes["summer"] = "flip-flops"

#Removing data
shoes.delete("summer") 

#Useful methods
books = { "Infinite Jest" => "David Foster Wallace", "Into the Wild" => "Jon Krakauer" }
books.keys  
books.values

#Merging Hashes
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2) 

#Symbols as keys
# Rocket syntax
american_cars = { :ford => "Mustang", :chevrolet => "Corvette" }

# Cleaner symbol syntax
japanese_cars = { honda: "Accord", toyota: "Corolla" }

#Accessing values
american_cars[:ford]   
japanese_cars[:honda]  



