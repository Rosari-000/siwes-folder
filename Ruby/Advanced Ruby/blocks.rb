#Introduction to blocks

# Single-line block
[1,2,3].each { |num| puts num }

# Multi-line block
[1,2,3].each do |num|
  puts num
end

#Yeild
def logger
  yield
end

logger { puts 'hello from the block' }
# => hello from the block

# Multiple Yeilds

def double_vision
  yield
  yield
  yield
  yield
end

double_vision { puts "How many fingers?" }


# Passing Arguments with Yield

def love_language
  yield('Ruby')
  yield('Rails')
end

love_language { |lang| puts "I love #{lang}" }

# Block Control

LocalJumpError
block_given?

def maybe_block
  if block_given?
    puts "block party"
  end
  puts "executed regardless"
end

maybe_block
# => executed regardless

maybe_block {}
# => block party
# => executed regardless


# Lambdas
#Types to declre lambda
my_lambda = lambda |puts "my lambda" |

my_other_lambda = -> { puts "hello from the other side" }

#To call the #call method
my_lambda = -> { puts "high five" }
my_lambda.call
# => high five


# for for your parameters
my_name = ->(name) { puts "hello #{name}" }

my_age = lambda { |age| puts "I am #{age} years old" }


my_name.call("tim")
#=> hello tim
my_age.call(78)
#=> I am 78 years old


#Different ways to call them 
my_name = ->(name) { puts "hello #{name}" }

my_name.call("tim")
my_name.("tim")
my_name["tim"]
my_name.=== "tim"


# Proc
#declaring a new proc
a_proc = Proc.new { puts "this is a proc" }

a_proc.call
#=> this is a proc

#or you can use this way "proc"
a_proc = proc { puts "this is a proc" }

a_proc.call
#=> this is a proc

#Arguments are declared inside pipes ||
a_proc = Proc.new { |name, age| puts "name: #{name} --- age: #{age}" }

a_proc.call("tim", 80)
#=> name: tim --- age: 80




#Proc vs Lambdas
a_lambda = -> { return 1 }
a_lambda.call
# => 1

def my_method
  a_proc = Proc.new { return }
  puts "this line will be printed"
  a_proc.call
  puts "this line is never reached"
end

my_method
# => this line will be printed

# Capturing Blocks

# &
def cool_method(&my_block)
  my_block.call
end

cool_method { puts "cool" }
# => cool


#Convert proc to block
def cool_method
  yield
end

my_proc = Proc.new { puts "proc party" }
cool_method(&my_proc)
# => proc party




