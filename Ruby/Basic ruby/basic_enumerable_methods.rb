#each
friends = ['Sharon', 'Leo', 'Leila']
friends.each { |friend| puts "Hello, #{friend}" }

#each_with_index
fruits = ["apple", "banana", "strawberry"]
fruits.each_with_index { |fruit, index| puts "#{index}: #{fruit}" }

#map(aka #collect)
friends = ['Sharon', 'Leo', 'Leila']
friends.map { |friend| friend.upcase }


#select (aka #filter)
friends = ['Sharon', 'Leo', 'Leila', 'Brian']
friends.select { |friend| friend != 'Brian' }

#reduce(aka #inject)
#sum of numbers
numbers = [5, 6, 7, 8]
numbers.reduce { |sum, num| sum + num }
#=> 26

#counting words
votes = ["Burger Shack", "Bistro", "Burger Shack"]
votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Burger Shack"=>2, "Bistro"=>1}


#Bang Methods(!)
friends = ['Sharon', 'Leo']
friends.map! { |friend| friend.upcase }
#=> ["SHARON", "LEO"]


#Return values
invited_friends = friends.select { |f| f != 'Brian' }



