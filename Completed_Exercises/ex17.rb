#Exercise 17: More Files

from_file, to_file = ARGV
script = $0

=begin
wasn't able to figure out require, tried
input = require "test.txt"
to_file = ARGV
script = $0

error => "embedded document meets end of file"
=end

puts "Copying from #{from_file} to #{to_file}"

#we could do these two on one line too, how?

=begin
input = File.open(from_file) 
indata = input.read()
=end

#we could do these two on one line too, how?
#input = File.open(from_file) {|x| x.read}

input = open(from_file) {|x| x.read}

puts "The input file is #{input.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort"
STDIN.gets

output = File.open(to_file, 'w')
output.write(input)

puts "Alright, all done."

output.close()
#I'm not able to close the input file closes
#automatically after the block, so it is not needed here.
puts

