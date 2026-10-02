# What is a style guide

# What is formatiing
# Bad formatting
def hello;puts "Hi";end

# Good formatting
def hello
  puts "Hi"
end

#Linting
# Robocop
 #How to configure rubocop
 AllCops:
  NewCops: enable

Style/StringLiterals:
  EnforcedStyle: single_quotes

  #Whay is metrics department important

  #What is the ABC metric

  #Example offense
  Metrics/AbcSize: Assignment Branch Condition size too high. [<1, 18, 0> 18.03/17]

  # What is Cyclomatic complexity

  #What is Percieved complexity