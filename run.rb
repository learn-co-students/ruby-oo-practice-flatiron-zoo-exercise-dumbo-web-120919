require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Bronx zoo", "Bronx")
z2 = Zoo.new("Columbus Zoo & aquarium", "Ohio")

an1 = Animal.new("Cat", "Savannah Cat", 20, z1)
an2 = Animal.new("Cat", "Tiger", 500, z2)
an2 = Animal.new("Fish", "Shark", 400, z2)
an2 = Animal.new("Bear", "Grizzly", 800, z2)
an2 = Animal.new("Dog", "Siberian Husky", 40, z1)
an2 = Animal.new("Rodent", "Hamster", 1, z1)
an2 = Animal.new("Rodent", "Squirrel", 2, z1)
an2 = Animal.new("Primate", "Chimpanzee", 30, z2)
an2 = Animal.new("Primate", "Gorilla", 800, z2)
an2 = Animal.new("Cat", "Lion", 800, z1)
an2 = Animal.new("Dog", "Hyena", 300, z1)


binding.pry
puts "done"
