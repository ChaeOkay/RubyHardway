#Exercise 43 : Gothons From Planet Percal #25

class Game
  
  def initialize(start)
    @quips = [
      "You died. you kinda suck at this.",
      "Nice job, you died ...jackass.",
      "Such a luser.", 
      "I have a small puppy that's better at this."
    ]
    @start = start
  end
  
  def prompt()
    print "> "
  end
  
  def play()
    next_room = @start
    
    while true
      puts "\n__________"
      room = method(next_room)
      next_room = room.call()
    end
  end
  
  def death()
    puts @quips[rand(@quips.length())]
    Process.exit(1)
  end
  
  def central_corridor()
    puts "The gothons of percal 25 have invaded your ship and destroyed"
    puts "your entire crew. you are the last surviving member."
    puts "Your mission is to get the bomb from the Weapons Armory."
    puts "put it in the bridge, and blow the ship up after getting "
    puts "an escape pod."
    puts "\n"
    puts "Your running down the corridoir when"
    puts "A Gotham jumps out"
    puts "flowing around his hate filled body. He's blocking the door"
    puts "to the Armory and about to pull a weapon."
    
    prompt()
    action = gets.chomp()
    
    if action == "shoot!"
      puts "Quickly you fire at the Gothon."
      puts "His costume is moving around his body"
      puts "off your aim. your laser misses."
      puts "You ruin the costume"
      puts "and he is an an insane rage. he blasts you"
      puts "until you are dead and then eats you."
      return :death
      
      elsif action == "dodge!"
        puts "you die. the Gothon stomps on your head and eats you"
        return :death
        
        elsif action == "tell a joke"
          puts "the Gothon cannot stop laughing"
          puts "you run up and shoot him and jump"
          puts "through the Weapon Armory door."
          return :laser_weapon_armory
          
          else
            puts "DOES NOT COMPUTE!"
            return :central_corridor
            end
            end
            
  def laser_weapon_armory()
    puts "you see the neutron bomb in it's container."
    puts "there is a keypad. if you get the code"
    puts "wrong 10 times you will never get the bomb."
    puts "the code is 3 digits"
    code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
    print "[keypad]>"
    guess = gets.chomp()
    guesses = 1
    #bug was because guesses started at 0 and needed to start at 1
    
    while guess != code and guesses < 10
      puts "BZZZED!"
      guesses += 1
      print "[keypad]>"
      guess = gets.chomp()
    end
    
    if guess == code
      puts "you broke the code but you must put the bomb in the right spot"
      return :the_bridge
    else
      puts "The lock buzzes one last time and you die"
      return :death
    end
  end
  
  def the_bridge()
    puts "the Gothons see you, but don't want to set off the bomb"
    prompt()
    action = gets.chomp()
    
    if action == "throw the bomb"
      puts "in a panic you drop the bomb and you die."
      return :death
      
    elsif action == "slowly place the bomb"
      puts "you strategically place the bomb where the"
      puts "Gothons are blocked. you run to the escape pod."
      return :escape_pod
    else
      puts "DOES NOT COMPUTE!"
      return :the_bridge
    end
  end
  
  def escape_pod()
    puts "there are 5 pods which do you take?"
    
    good_pod = rand(5)+1
    print "[pod #]>"
    guess = gets.chomp()
    
    if guess.to_i != good_pod
      puts "you jump in and it implodes. you die."
      return :death
    else
      puts "you jimp in and it flies to another planet."
      puts "you win!"
      Process.exit(0)
    end
  end
end

a_game = Game.new(:central_corridor)
a_game.play()
      