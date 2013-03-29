#Excercise 29: What if

people = 20
cats = 30
dogs = 15

if people < cats
    puts "Too many cats! The world is furry!"
end

if people > cats
    puts "Not many cats! The world is sad."
end

if people < dogs
    puts "The world is drooled on!"
end

if people > dogs
    puts "The world is dirty!"
end

dogs +=5

if people >= dogs
    puts "People are greater than or equal to dogs."
end

if people == dogs
    puts "People are dogs."
end

if cats > dogs 
    puts "Cats are adorable!"
else dogs > cats
    puts "I'm getting the hand of this beginners Ruby stuff!"
end


=begin
EXTRA CREDIT
1. If id code take a boolean expression (t/f) and returns
an action if that condition is met.
=end
