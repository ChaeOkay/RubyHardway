#Excercise 42: Is-a, Has-a, Objects and Classes


class Animal
	end

is-a
class Dog < Animal
	def initialize(name)
		has-a
		@name = name
	end
end

is-a
class Cat < Animal
	def initialize(name)
		has-a
		@name = name
	end
end

is-a
class Person
	def initialize(name)
		has-a
		@name = name

		has-a
		@pet = nil
	end

	attr_accessor :pet
end

is-a
class Employee < Person
	def initialize(name, salary)
		is-a
		super(name)
		has-a 
		@salary = salary
	end
end

is-a
class Fish 
end

is-a
class Salmon < Fish

is-a
class Halibut < Fish
end

is-a
rover = Dog.net("Rover")

is-a
rover = Cat.new("Satan")

is-a
mary = Person.new("Mary")

has-a
mary.pet = satan 

is-a
frank = Employee.new("Frank", 120000)

has-a
frank.pet = rover

is-a
flipper = Fish.new()

is-a
crouse = Salmon.new()

is-a
harry = Halibut.new()