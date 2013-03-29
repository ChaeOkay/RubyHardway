#Excercise 13

first, second, third = ARGV
#ARGV is the "argument variable"
#Caps means constant

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

=begin
when running "ruby ex13.rb a b c" in the command line
it returns the #{} with the variables

Extra Credit
1. If two variables are given, the first returns empty
2. 
apple, orange, banana = ARGV
puts "This script is is called: #{$0}"
puts "Your fruits today are #{banana}, #{apple}, #{orange}"
3.
var = ARGV
puts "Hello, what's your name?"
name = STDIN.gets.chomp()

puts "Okay #{name}, how do you like script #{$0}?"
puts "Oh yeah, your script is #{var}!!!"
=end