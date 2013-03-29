#Exercise 14

user = ARGV.first
prompt = '< '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alight, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice
MESSAGE

=begin
EXTRA CREDIT
1. http://pot.home.xs4all.nl/infocom/zork1.html
2. prompt = '****'
3. 	puts "What would you like to eat for dinner?"
	print prompt
	computer = STDIN.gets.chomp()
4. Calling the varialbes likes, lives, and computer using string interpolation.
