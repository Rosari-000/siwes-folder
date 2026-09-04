#Nested array
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

#Accessing Elements

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes[0][0]  # => "Adams"
teacher_mailboxes[-1][-2] # => "Smith"


#Error vs.Nill
teacher_mailboxes.dig(3, 0) # => nil

#Creating Nested Arrays
#bad
mutable = Array.new(3, Array.new(2))
mutable[0][0] = 1000
# => [[1000, nil], [1000, nil], [1000, nil]]

#fix
nested_arrays = Array.new(3) { Array.new(2) }


#Adding and removing
#add to whole row
test_scores << [100, 99, 98, 97]

#Add to specific row
test_scores[0].push(100)

#Remove
test_scores.pop
test_scores[0].pop

#iterating
#
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, col_index|
    puts "Row:#{row_index} Col:#{col_index} = #{teacher}"
  end
end

#flatten 
teacher_mailboxes.flatten.each { |teacher| puts "#{teacher} is amazing!" }


#Nested Hashes
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

#Accessing Data
#using chained keys[:x][:y]
vehicles[:alice][:year] # => 2019

#dig
vehicles.dig(:zoe, :year) # => nil

#Adding and removing
#Add a new nested hash
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}

#Add a key/value inside a nested hash
vehicles[:dave][:color] = "red"

#Delete a nested hash
vehicles.delete(:blake)

#Delete a nested hash
vehicles.delete(:blake)

#Delete a key inside a nested hash
vehicles[:dave].delete(:color)


#useful methods
#select
vehicles.select { |name, data| data[:year] >= 2020 }

#collect/#map
vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact

#filter_map c(Ruby 2.7+)-> combines map + compact
vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
# => [:caleb, :dave]
