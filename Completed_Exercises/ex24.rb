#Exercise 24

puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

poem = <<MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love 
nor comprehend passion from intuition
and requires and explanation
\n\t\twhere there is none. 

MULTI_LINE_STRING

puts "______________"
puts poem
puts "______________"

five = 10-2+3-6
puts "This should be five: #{five}"

def secret_formula(started)
	jelly_beans = started*500
	jars = jelly_beans / 1_000
	crates = jars / 100
	return jelly_beans, jars, crates
end

start_point = 10_000
beans, jars, crates = secret_formula(start_point)
#I see that "beans" is put in here, but I don't understand how we know 
#what it is when we call it below in the string. 
#We don't explicitly spell out what beans should be. we know what "jelly_beans" are though... 

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)