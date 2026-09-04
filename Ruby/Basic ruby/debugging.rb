#Stack Trace
#bottles.rb:31:in `<main>': undefined local variable or method `x' (NameError)

# debugging with puts and p
def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split(',')
  unique_length = string_array.uniq.length

  p string_array
  p unique_length

  original_length == unique_length
end

#Debugging with Pry-byebug
require 'pry-byebug'

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")

#Debugging with VSCode