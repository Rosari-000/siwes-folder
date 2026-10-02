#Working with files in ruby

#-> Reading a file line by line
File.open("example.txt", "r") do |file|
  file.each_line do |line|
    puts line
  end
end

# Wrting to a file

File.open("output.txt", "w") do |file|
  file.puts "Hello, world!"
end


#Serialization

#JSON 

#Example serialize an array into JSON
require 'json'
arr = [1, 2, 3]
json_string = arr.to_json
puts json_string  # => "[1,2,3]"

#Convert JSON back into Ruby
ruby_array = JSON.parse(json_string)
puts ruby_array.inspect  # => [1, 2, 3]

#YAML
#Example
require 'yaml'
data = { name: "Rosari", age: 15 }
yaml_string = data.to_yaml
puts yaml_string

#Convert YAML back into Ruby
ruby_hash = YAML.load(yaml_string)
puts ruby_hash.inspect


#File and Directory Operations
#Check if a file exist
File.exist?("example.txt")  # => true or false

#check if a directory exist
Dir.exist?("my_folder")  # => true or false

#List directorty contents
Dir.entries("my_folder")  # => ["file1.txt", "file2.rb", ...]

