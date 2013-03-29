#Excercise 31: Making Decisions

def prompt
    print "> "
end

puts "You enter a dark room with two doors. Do you go through door #1, door #2, or door #3?"

prompt; door = gets.chomp

if door == "1"
    puts "There's a giant bear here eating a cheese cake. What do you do?"
    puts "1. take the cake."
    puts "2. Scream at the bear."

    prompt; bear = gets.chomp

    if bear == "1"
        puts "The bear eats your face off. Good job!"
    elsif bear == "2"
        puts "The bear eats your legs off. Good job!"
    else
        puts "Well, doing #{bear} is probably better. Bear runs away."
    end

elsif door == "2"
    puts "You stare into the endless abyss at Cthuhlu's retina."
    puts "1. Blueberries."
    puts "2. Yellow jacket clothespins."
    puts "3. Understanding revolvers yellow melodies."

    prompt; insanity = gets.chomp

    if insanity == "1" or insanity == "2"
        puts "Your body survives powered by a mind of jello. Good job!"
    else
        puts "The insanity rots your eyes into a pool of muck. Good job!"
    end

elsif door == "3"
    puts "You are have landed on mars and can breath in the atmosphere. Do you"
    puts "1. Stay and explore the area."
    puts "2. Try to find a way back home."

    prompt; mars = gets.chomp

    if mars == "1"
        puts "Oh no you can't breath anymore! I think your dead now."
    elsif mars == "2"
        puts "Three years have passed now. You have tried to build a space ship to no avail." 
        puts "Thankfully, you have found a martian dog named Ojai to keep you company."
    else
        puts "Choosing #{mars} brings you home!!!"
    end

else
  puts "You stumble around all fall on a knoife and die. Good job!"
  end




