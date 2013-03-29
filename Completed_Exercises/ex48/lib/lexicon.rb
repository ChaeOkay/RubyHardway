###IN PROGRESS###

class Lexicon
  
  Pair = Struct.new(:token, :word)
  
  def initialize()
  end
  

  DIRECTIONS = [ 'north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back']
  
  
  def scan(words)
    pairs = []
    for word in words.split(" ")
    
    if DIRECTIONS.include?words
      pairs.push(Pair.new( :direction, word))
    else 
      pairs.push(Pair.new( :error, word))
    end
  end
    
  
end
end

#I could not figure this out for the life of me, but walked through
#the solution to understand it. 