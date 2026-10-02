#class 
# class Dog
#   def bark
#     puts "Woof!"
#   end
# end

# #getters and setters
# class Person
#   attr_reader :name
#   attr_writer :name
# end

# p = Person.new
# p.name = "Alice"   # setter
# puts p.name        # getter

# #Inheritance
class Animal
  def breathe
    puts "Breathing..."
  end
  def jumps
    sings
  end
  private 
  def sings
    puts "singing"
  end
end

class Dog < Animal
  def bark
    puts "Woof!"
  end
end

d = Dog.new
d.breathe  # inherited from Animal
d.bark  
#d.sings 
a = Animal.new
a.jumps  # defined in Dog

#Scope

#Instance variables
class Car
  attr_accessor :model, :year
  def initialize(model,year)
    @model = model
    @year = year
  end
  
  
 # def show_model
  
   # puts @model
 # end
end

c1 = Car.new("Toyota", 1995)
c2 = Car.new("Honda", 2009)


puts c1.model 
c1.model= "Hilux"
puts c1.model

puts c1.year
c1.year =1998
puts c1.year


#1.show_model  # Toyota
#2.show_model  # Honda

# #Difference between class variables and instance variables
class Person
  @@count = 0   # class variable
  
  attr_reader  :age
  def initialize(name)
   @name = name   # instance variable
    @@count += 1
  end

  def self.total_people
    @@count
  end
  def old(age)
    @age = age
  end
end

p1 = Person.new("Alice")
p2 = Person.new("Bob")
 #instantiate
puts Person.name
puts p1.name
p1.old(14)
p1.old(24)
p1.name = "Rosari"
puts p1.name
puts p1.age
p1.age = 44
puts p1.age
 puts Person.total_people  # 2
