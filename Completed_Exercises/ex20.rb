#Exercise 20: Functions and Files

#assigns the file to ARGV
input_file = ARGV[0]

#method that prints everything using the .read method
def print_all(f)
	puts f.read()
end

#rewind is needed because the first method called put us at the end of the file
#to re-display from the beginning, we need to rewind
def rewind(f)
	# the seek method. Apparently, when the computer "reads" a file, there
	#is an object pointer that keeps track of where the file is. for example
	#using ".readline" method moves the pointer one line of text at a time. 
	#the beinning of the file is "0". To call this method, we need to tap into
	#the IO class, where the seek method automatically lives. 
	#http://rdoc.info/stdlib/core/1.9.2/IO:seek 
	#and http://www.ruby-forum.com/topic/2786502
	# have great explainations

	f.seek(0, IO::SEEK_SET)
end

#the print_a_line method has two parameters
#the first line_count tell us what line we are reading
#the second displays the line using .readline method 
#we are able to keep both at the same pace, because each time we run it, we don't rewind.
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

#this variable is the opened file. we want to be able to read it in the print_all method
#so we assign a variable to us so that we can use the function
current_file = File.open(input_file)

puts "first let's print the whole file:"
puts

print_all(current_file)

puts
puts "Now let's rewind, kind of like a tape."
rewind(current_file)

#we are setting the line-counter to start at 1.
current_line = 1
print_a_line(current_line, current_file)

#the current line will display as 2, because we are adding another 1 to it
#the f parameter automatically reads one line at a time, going to the next 
#from the .readline method
current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)