#How to maintain and  organize files
project_name
├── lib
│   └── my_class.rb
└── main.rb

#How to make code form files available
#require_relative
# main.rb
require_relative 'lib/sort'

#require
require 'csv'   # loads Ruby’s built-in CSV library

#Why wrap your code in a module
module Travel
  class Flight
    def introduce
      puts "I'm on the flight!"
    end
  end
end

Travel::Flight.new.introduce

#What are gems

gem install colorize

require 'colorize'
puts "Hello".colorize(:red)


#What is bundler used for 

#why use bundle exec

# what are gemfile and Gemfile.lock