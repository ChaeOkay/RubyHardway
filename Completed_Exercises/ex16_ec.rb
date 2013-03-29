#Exercise 16: Reading and Writing Files
#Madlibs


filename = ARGV.first

#I'm not sure why script is needed, it's not called out this this program
script = $0

puts
puts "That file looks like bananas. Let's erase it, okay?"
puts "If you like bananas, hit CTRL-C (^C)."
puts "If want to write something really awesome, hit RETURN."
print "?"

STDIN.gets

#open(file) is a synonym for ::new. 
#"w" means write-only, truncates existing file to zero
#length or creates a new file for writing
#"w+" allows for the file to also be read
target = File.open(filename, 'w+')

#removed truncating function because
#it's built into the w+ IO open operation

puts "Bananas have been truncated."
puts "Now let's write a limerick:"
puts
print "Name a noun: "; a = STDIN.gets.chomp()
print "Name a place (ahem, that can rhyme with more words): "; b = STDIN.gets.chomp()
print "Name a place that rhymes with the place: "; c = STDIN.gets.chomp()
print "Name a different place that rhymes with the place: "; d = STDIN.gets.chomp()
print "Name a verb: "; e = STDIN.gets.chomp()
print "Name a verb that rhymes with the last verb: "; f = STDIN.gets.chomp()
print "Name a two-syllable verb: "; g = STDIN.gets.chomp()
print "Name a two-syllable verb, past tense: "; h = STDIN.gets.chomp()

puts "Excellent!"
puts ".....writing to file....."

line1 = "There once was a "
line2 = " from "
line3 = "Who like to "
line4 = " in "
line5 = "It started to "
line6 = "And continued to "
line7 = "And finally "

target.write(line1)
target.write(a)
target.write(line2)
target.write(b)
target.write("\n")

target.write(line3)
target.write(g)
target.write(line4)
target.write(c)
target.write("\n")

target.write(line5)
target.write(e)
target.write("\n")

target.write(line6)
target.write(f)
target.write("\n")

target.write(line7)
target.write(h)
target.write(line4)
target.write(d)
target.write("!")


puts
puts "Let's read it:"
puts

target.rewind

f = target
f.each { |line| puts line }

puts
puts "That sound ridiculous!!!"
puts "Excellent work! Closing file."
target.close()