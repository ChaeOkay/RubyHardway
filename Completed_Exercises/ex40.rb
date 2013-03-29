#Excercise 40: Modules, Classes, and Objects

=begin

mystuff['apple']  	gets apple from hash
MyStuff.apple()  	gets apple from module 
MyStuff::TANGERINE 	gets a variable from the module

for a hash, the key is Hash[key]
for a module, the key is Module.key

classes are like mini-modules. They need to be instantiated 
by assigning an object. that way we create a new one and required it at the same time.

thing = ClassName.new()
thing.apple()
puts thing.tangerine

*the .new() call creates a blueprint for how to build a copy of that type of thing.

Getting things:

HASH
mystuff['apples']

MODULE
mystuff.apples()
puts mystuff.tangerine

CLASS
thing = MyStuff.new()
thing.apples()
puts thing.tangerine

=end

class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end
end

go = ["Happy birthday to you", 
	"I don't want to get sued",
	"so I'll stop right there"]

happy_bday = Song.new(go)

lyrics = ["They rally around the family", 
		"With pockets full of shells"]

bulls_on_parade = Song.new(lyrics)

happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song

info = {"abbra" => "cadabra",
		"agent" => "orange"}
song3 = Song.new(info)
song3.sing_me_a_song