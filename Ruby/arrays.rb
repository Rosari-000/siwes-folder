#Array
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

#Creating Arrays
#Array literal 
my_array = [1, 2, 3]

#Array.new
Array.new        
Array.new(3)     
Array.new(3, 7)  

#Accessing Elements
str_array = ["This", "is", "a", "small", "array"]

str_array[0]   
str_array[4]   
str_array[-1] 

#special methods
#.first
#.second

#still using the string array above
str_array.first(2)
str_array.last(2) 

#Adding elements 
.push
<<
.unshift

num_array = [1, 2]
num_array.push(3, 4) 
num_array << 5       
num_array.unshift(0)

#Removing Elements
.pop
.shift

num_array = [1, 2, 3, 4, 5]
num_array.pop     
num_array.shift   

#Both can accept arguments 
num_array = [1, 2, 3, 4, 5, 6]
num_array.pop(2)   
num_array.shift(2) 


#Adding   and subtracting Arrays

#concatenates arrays (+)
[1, 2, 3] + [3, 4, 5] 

# - (removes elemets )
[1, 1, 2, 3, 4] - [1, 4] 

#common array methods
.empty?
.length
.reverse
.include?(x)
.join

[1, 2, 3].empty?     
[1, 2, 3].length     
[1, 2, 3].reverse    
[1, 2, 3].include?(2) 
[1, 2, 3].join("-")  



