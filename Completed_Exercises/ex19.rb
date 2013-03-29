#Exercise 19: Functions and Variables

def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket."
	puts # a blank line
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10+20, 5+6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

#Extra Credit

#I noticed that the variable definitions needed to happen
#before the call!

red = "red"
green = "green"
blue = "blue"

def painting(color1, color2, color3)
	puts "All paintings should have #{color1}, #{color2}, and #{color3}."
	puts "Sometimes people only prefer #{color1}."
	puts "Sometimes people only prefer #{color2}."
	puts "Most people despise #{color3}, but I think it's lovely!"
	puts
end

#1
puts "This is what happens when you use primaries"
painting(red, green, blue)

#2
puts "This is what happens when you use secondaries."
combo1 = "red + green"
combo2 = "blue + red"
combo3 = "blue + green"
painting(combo1, combo2, combo3)

#3
puts "This is what happens when you reverse them"
r1 = red.reverse
r2 = green.reverse
r3 = blue.reverse
painting(r1, r2, r3)

#4
puts "Is is possible to combeing with numbers?"
painting(red.upcase, green.upcase, blue.upcase)

#5
puts "Testing method length!"
painting(red.length, green.length, blue.length)

#6
puts "Testing method chomp!"
painting(red.chomp("ed"), green.chomp("een"), blue.chomp("e"))

#7
puts "Testing push!"
painting(red<<"-orange", green<<"-grey", blue<<"-violet")

#8
puts "Testing gsub!"
painting(red.gsub(/[aeiou]/, '*'), green.gsub(/[aeiou]/, '*'), blue.gsub(/[aeiou]/, '*'))

#9
puts "Testing insert!"
red = "red"
green = "green"
blue = "blue"
painting(red.insert(-1, 'X'), green.insert(-1, 'X'), blue.insert(-1, 'X'))

#10
puts "Testing split!"
red = "red"
green = "green"
blue = "blue"
painting(red.split(//), green.split(//), blue.split(//))
