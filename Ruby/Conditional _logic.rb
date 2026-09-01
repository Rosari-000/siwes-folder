#Truthy and Falsy values

#false and fill => falsy values
#truthy values =>0, "","false"
 
if 0
  puts "This runs!" 
end
#truthy value

#Basic if statements
if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end


#shortcut (one-line)
puts "1 is less than 2" if 1 < 2

#Adding else and else if 
if attack_by_land
  puts "release the goat"
elsif attack_by_sea
  puts "release the shark"
elsif attack_by_air
  puts "release the cat"
else
  puts "release Kevin the flying octopus"
end

#comparsion operators
==
!=
> <
>= <=
.eql?
.equal?
<=>

#logical operators
&& 
||
!

#short circuit evaluation
if 10 < 2 || 5 < 6
  puts "Party at Kevin's!"
end


#Case statements
grade = 'F'

did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' - John"
end

#Unless Statements
age = 19
unless age < 18
  puts "Get a job."
end


#Tenary Operator
age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response
