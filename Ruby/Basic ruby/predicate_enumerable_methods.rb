#predicate method
[1, 2, 3].include?(2)  # => true


#include?
numbers = [5, 6, 7, 8]
numbers.include?(6)   # => true
numbers.include?(3)   # => false


#any?
numbers = [21, 42, 303, 499, 550, 811]
numbers.any? { |n| n > 500 }   # => true
numbers.any? { |n| n < 20 }    # => false


#all?
fruits = ["apple", "banana", "strawberry"]
fruits.all? { |f| f.length > 3 }   # => true
fruits.all? { |f| f.length > 6 }   # => false


#none?
fruits = ["apple", "banana", "strawberry"]
fruits.none? { |f| f.length > 10 }   # => true
fruits.none? { |f| f.length > 6 }    # => false


#one?
fruits = ["apple", "banana", "strawberry"]
fruits.one? { |f| f.length > 9 }   # => true
fruits.one? { |f| f.length > 2 }   # => false
