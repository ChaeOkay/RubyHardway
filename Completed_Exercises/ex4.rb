#defining variables
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90

#defining variable with variables
cars_not_drivern = cars - drivers
cars_driver = drivers
carpool_capacity = cars_driver * space_in_a_car
average_passengers_per_car = passengers / cars_not_drivern

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_drivern} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."


=begin
the error "undefined local variable or method" means that 
we were trying to use a variable that wasn't defined somewhere 
in lines 2-11
end