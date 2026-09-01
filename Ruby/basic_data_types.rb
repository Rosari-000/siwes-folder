#Numbers in Ruby
17 / 5   #=> 3   (integer division)
17 / 5.0 #=> 3.4 (float division)

#converion 
13.to_f   #=> 13.0
13.9.to_i #=> 13

# to check for the even or odd number
6.even?
7.even?

7.odd?
2.odd?

#strings
""# allows string interpolation and escape characters
''# just a plain text nothing 

name = "Rosari"
"Hello, #{name}" #=> "Hello, Odin"
'Hello, #{name}' #=> "Hello, #{name}"

#Concatenation(joining Strings)
"Hello " + "World" #plus operator
"Hello "<< "World" #shovel operator
"Hello " .concat("World").concat("welcome") #concat method

#Substrings
"hello"[0]    #=> "h"
"hello"[0..2] #=> "hel"
"hello"[0,4]  #=> ""
"hello"[-1]   #=> "o"

#escape characters
\\ 
\b 
\r 
\n
\s 
\t 
#puts "hellon\nworld"
#common string methods
"hello".capitalize 
"hello".upcase
"hello".downcase
"hello".reverse
"hello world".spilt
"hello".strip
"hello".empty?
"hello".include?("lo")
"hello".length


#symbols
"string".object_id == "string".object_id #=> false
:symbol.object_id == :symbol.object_id   #=> true

#Booleans
#true , false and nill

5.even?   #=> true
"".empty? #=> true

puts "Hello" #=> nil (because puts prints but doesn’t return anything useful)


