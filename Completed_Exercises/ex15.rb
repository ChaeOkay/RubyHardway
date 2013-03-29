#Exercise 15: Reading Files

#defines variable for information that can be taken from outside the script and put into the script
filename = ARGV.first

#defines variable for symbol to show in display
prompt = "> "
#defines variable that opens the filename
txt = File.open(filename)


#recalls the filename variable (from outside of this script)
puts "Here's your file: #{filename}"
#recalls the txt variable that opens the file, 
#the .read method displays the contents
puts txt.read()
txt.close

#displays a request for info
puts "I'll also ask you to type it again:"
#recalls the prompt symbol
print prompt
#asks for information again that can be used in this script, from elsewhere
file_again = STDIN.gets.chomp()
#defines a variable to open the file_again variable
txt_again = File.open(file_again)
close(file_again)
#recalls txt_again variable(which opens the file) and then 
#displays it through the read method
puts txt_again
txt_again.close

=begin
Extra Credit
1. see above comments
2. see above
3. I think of methods as needing to be defined through "def", or pre
loaded as a ".name_of_method" It seems like we are defining
methods as variables in this script.
4/5. STDIN takes info once you are already in the script, ARGV expects 
info before the script starts.
6/7. Can't fiture out how to repath in irb to open the file.
8. see above
=end