#Introduction to pattern matching

#pattern matching 
grade = 'C'

case grade
in 'A' then puts 'Amazing effort'
in 'B' then puts 'Good work'
in 'C' then puts 'Well done'
else puts 'See me'
end
# => Well done

#Return Values
grade = 'C'

result = case grade
  in 'A' then 1
  in 'B' then 2
  in 'C' then 3
  else 0
end

puts result
# => 3


#Object Pattern
input = 3

case input
in String then puts 'input was of type String'
in Integer then puts 'input was of type Integer'
end
# => input was of type Integer


#Variable Pattern and pin operator
a = 5

case 1
in a
  a
end
puts a
# => 1   (variable reassigned!)

# Pin operator prevents reassignment
case 1
in ^a
  :no_match
end
# => NoMatchingPatternError

# Alternative Pattern 
case 0
in 0 | 1 | 2
  puts :match
end
# => match

#Guard Conditions
some_other_value = true

case 0
in 0 if some_other_value
  puts :match
end
# => match


#Array Pattern Matching
*
_

arr = [1, 2, 3]

case arr
in [Integer, Integer, *]
  puts :match
end
# => match

case arr
in [1, 2, *tail]
  p tail
end
# => [3]


#Nested Array
arr = [1, 2, [3, 4]]

case arr
in [_, _, [3, 4]]
  puts :match
end
# => match


#Hash Pattern Matching
**

case { a: 'apple', b: 'banana' }
in { a: a, b: b }
  puts a
  puts b
end



case { a: 'ant', b: 'ball', c: 'cat' }
in { a: 'ant', **rest }
  p rest
end

#Ruby 3 patterns
#Rightward Assignment
login = { username: 'hornby', password: 'iliketrains', age: '25'}

login => { age: how_old }
puts "Logged in with the age  #{how_old}"


#Find Pattern
case [1, 2, 3, 4, 5]
in [*pre, 2, 3, *post]
  p pre
  p post
end
#Wrap up




