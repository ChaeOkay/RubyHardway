#Excercise 7

#displays string one one line
puts "Mary had a little lamb."
=begin
the line below displays string on new line, with variable defined with %s 
couldn't find any info on why and when variable should be defined like this.
seems like best practice would be to use a local variable with @, but that seems
more specific for when you have classes.
=end
puts "Its fleece was white as %s." % 'snow'
#displays string on new line
puts "And everywhere that Mary went."
#displays a "." ten times
puts "."*10 #what'd that do?

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

#notice how we are using print instead of puts here. 
#Change it to puts and see what happens.

#puts creates a new line of display, so cheese and burger would be on different lines
print end1 + end2 + end3 + end4 + end5 + end6 
print end7 + end8 + end9 + end10 + end11 + end12

# this just is polite use of the terminal, try removing it
#a 'puts' at the end of the file make the command line look better. I like this.
puts