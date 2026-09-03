#Creating and calling Methods
#The syntax
def method_name
  # code here
end


def my_name
  "Joe Smith"
end

puts my_name   #=> "Joe Smith"

#Method Naming Rules
method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid

#Parameters and Arguments
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John")  #=> Hello, John!

#Default Parameters
def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane")     #=> Hello, Jane!
puts greet             #=> Hello, stranger!


#Return Values
def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

#explict return
def my_name
  return "Joe Smith"
  "Jane Doe"   # never reached
end


#Difference between puts and return
def puts_squared(number)
  puts number * number
end

def return_squared(number)
  number * number
end
# check 
puts_squared(20)

return_squared(20)

#Method Chaining
phrase = ["be", "to", "not", "or", "be", "to"]
puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"


#Predicate Methods
5.even?     #=> false
6.even?     #=> true
12.between?(10, 15)  #=> true


#you can define your own 
def positive?(number)
  number > 0
end
 
puts positive?(5)
 
#Bang Methods
whisper = "HELLO"
whisper.downcase!   # modifies whisper directly
puts whisper        #=> "hello"
