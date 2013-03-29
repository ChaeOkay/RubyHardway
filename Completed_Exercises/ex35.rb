#Excercise 35: Branches and Functions

def prompt()
    print "> "
end

def gold_room()
    puts "This room is full of gold. How much do you take?"
    prompt; next_move = gets.chomp

    #original argument

    #if next_move.include? "0" or next_move.include? "1"
    #  how_much = next_move.to_i()
    #else
    #  dead("Man, learn to type a number.")
    #end
    #if how_much < 50
    #  puts "Nice, you're not greedy, you win!"
    #  Process.exit(0)
    #else
    #  dead("You greedy bastard!")
    #end

    if (0..50) === next_move.to_i()
        how_much = next_move
        puts "Nice, you're not greedy, you win!"
        Process.exit(0)
     else
        dead("man, learn to type a number. I think you're dead.")
    end
end

    #I worked on this for awhile, and realized that using .is_a?(Integer) returns false. 
    #then i searched "how do i check to see if a number is within a range" since that
    #was what we were doing in two steps. This ended up allowing me to condense (refractor?)
    #the body, which is awesome!
    #one thing I noticed, is that when I use (0..50) == next_move.to_i(), 
    #it returns false. For some reason, you have to use
    #the === in order for it to work. 

    #I researched some more, and I think that === basically assigns an equal status
    #to both sides of the condition. Even though == returns false, when you use === it
    #automatically assigns the condition to be true. 
    #Another thing I don't understand, is how this works, when the === is for class methods
    #No class was assigned in this script, so I'm wondering if there must be something
    #inherent about it, that makes this work. 



def bear_room()
    puts "There is a bear in here."
    puts "The bear has a bunch of honey."
    puts "The fat bear is in front of another door."
    puts "How are you going to move the bear?"
    bear_moved = false
    #bear_moved = false is just a little snipped that give a condition for when
    #the bear is in front of the door. If there wasn't a conditions, there would
    #be no bear, so to speak. 

    while true
        #while the 'bear_moved=false' condition is true, do the following
        prompt; next_move = gets.chomp

        if next_move == "take honey"
            dead("The bear looks at you then slaps your face off.")
        elsif next_move == "taunt bear" and not bear_moved
            #this condition says if we write "taunt bear" and the bear_moved is not true (as in it's false), then we can proceed
            puts "The bear has moved from the door. You can go through it now."
            bear_moved = true
        elsif next_move == "taunt bear" and bear_moved
            #this condition says that if we taunt bear and the bear_moved is false (not true) then we are dead.
            #I'm not actually sure how to get to this option, because I don't know how we would tell
            #the program that the bear_moved condition has changed. 
            dead("The bear gets pissed off and chews your leg off.")
        elsif next_move == "open door" and bear_moved
            gold_room()
        else
            puts "I got no idea what that means."
        end
    end
end

def cthulhu_room()
    puts "Here you see the great evil Cthulhu."
    puts "He, it, whatever stares at you and you go insane."
    puts "Do you flee for your life or eat your head?"

    prompt; next_move = gets.chomp

    if next_move.include? "flee"
        start()
        #this brings us back to the start of the game
    elsif next_move.include? "head"
        dead("Well that was tasty!")
    else
        cthulhu_room()
    end
end

def dead(why)
    puts "#{why} Good job!"
    Process.exit(0)
end

def start()
    puts "You are in a dark room."
    puts "There is a door to your right and left"
    puts "Which do you take?"

    prompt; next_move = gets.chomp

    if next_move == "left"
        bear_room()
    elsif next_move == "right"
        cthulhu_room()
    else
        dead("You stumble around the room until you starve.")
    end
end

start()