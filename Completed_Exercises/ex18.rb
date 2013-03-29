#Exercise 18: Names, Variables, Code, Functions

#This one is like your scrips with argv
def puts_two(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#ok, that #args is actually pointless, we can just do This
def puts_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#this just takes one argument
def puts_one(arg1)
	puts "arg1: #{arg1}"
end

#this one takes no arguments
def puts_non()
	puts "I got nothin'."
end

puts_two("Zed", "Shaw")
puts_two_again("Zed", "Shaw")
puts_one("First!")
puts_non()

=begin
EXTRA CREDIT

method checklist
1. Did you start your function definition with def?
2. Does your function name only have characters and _ characters?
3. Did you put an open parenthesis ( right after the function name?
4. Did you put your arguments after the parenthesis, separated by commas?
5. Did you make each argument unique, no duplicated names?
6. DId you put a close parenthesis ) after the arguments?
7. Did you indent all lines of code you wanted in the function 2 spaces?
8. Did you close your function body by typing "end"?

call checklist
1. Did you call/use/run this function by typing its name?
2. DId you put ( character after the name to run it? (this isn't required, but is idiomatic)
3. DId you put the values you want into parenthesis separated by commas?
4. Did you end the function with a ) character?