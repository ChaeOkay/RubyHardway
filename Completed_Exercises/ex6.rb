#Excercise 6

#variable defined as a string
#not sure why 10 needs string interpolation, getting same results without it
x = "There are #{10} types of people"
#variable set to string
binary = "binary"
#variable set to string. note that variables must be lower case, spaces must have underscores
do_not = "don't"
#variable set as string. String has injected variables with string interpolation
y = "Those who know #{binary} and those who #{do_not}."

#displays variable x string
puts x
#displays variable y string
puts y

#displays text with variable x.
puts "I said: #{x}."
#displays text with variable x.
puts "I also said: '#{y}'."

#variable set to boolean false. Not a string, not in ""
hilarious = false
#variable set to string that calls variable
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#displays variable string
puts joke_evaluation

#variale set to string
w = "This is the left side of..."
#variable set to string
e = "a string with a right side."

#concatenate (join) strings together
puts w + e
#another way of joining strings, not sure what this is called though
puts w << e
#I kept wanting to do a .push method, but then I found out it's only for arrays!

