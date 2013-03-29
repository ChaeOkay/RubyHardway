#Excercise 36: Designing and Debugging

def prompt()
    print ">"
end

def ex()
    Process.exit(0)
end

def start()
    puts; puts "WELCOME TO THE RESTAURANT CHEZ RUBY!" 
    puts "Would you liked some 'sparkling water', or 'still water'?"
    puts; prompt; water = gets.chomp.downcase
    if water == "sparkling water"
        puts; "#{water} is an excellent choice!"
        sparkling(water)
    else 
        oops(water)
    end
end


def sparkling(bev)
    puts; puts "#{bev} is fantastic! Our entrees this evening are as follows:"
    puts; puts "- type 'beof' for beof bourguingnon"
    puts "- type 'coq' for coq au vin"
    puts "- or type 'confit' for confit de canard."
    puts; puts "What will you be having?"

    puts; prompt; entre = gets.chomp.downcase

    if entre == "beof"
        puts; puts "#{entre} is excellent, but "
        dessert(entre)
    elsif entre.include? "coq"
        puts; puts "#{entre} is the cheapest thing on the menu!"
        grr()
    elsif entre.include? "confit"
        puts; puts "#{entre} should be paired with something!"
        app(entre)
    else
        puts; puts "#{entre} is greatly offensive to me!"
        grr()
    end
end

def dessert(fd)
    puts "#{fd} can't be the end of the meal!"
    puts "May I suggest a dessert? Maybe the 'tarte tatin' or the 'creme brulee'?"

    puts; prompt; des = gets.chomp.downcase

    if des.include? "tarte tatin"
        ending(des)
    else des.include? "creme brulee"
        oops(des)
    end 
end 

def app(dish)
    puts "We have several hors d'oeuvres go well with #{dish}"
    puts "How about the 'escargots' or 'cavier'?"

    puts; prompt; hors = gets.chomp.downcase

    if hors.include? "escargots"
        escargot(hors)
    elsif hors.include? "cavier"
        ending(hors)
    else 
        oops(hors)
    end
end

def escargot(snails)
        puts "How many of the #{snails} will you be having?"
        puts; prompt; snail_number = gets.chomp.downcase
        if (0...5) === snail_number.to_i()
            puts "6 is typical, but we can provide you with #{snail_number}"
            ending(snails)
        elsif 6 === snail_number.to_i()
            puts "Excellent!"
            ending(snails)
        elsif (7...12) === snail_number.to_i()
            puts "12 is typical, but we can provide you with #{snail_number}"
            ending(snails)
        else puts; puts "#{snail_number} is completely ridiculous!"
            grr()
        end
end



def ending(thing)
    puts "I certainly hope you enjoy your #{thing}."
    puts "THE INDIAN FOOD HERE IS DELICIOUS!"
    puts; Process.exit(0)
end
 
 #revise this with water   
def oops(choice)
    puts; puts "I'm sorry, we are out of #{choice} this evening."
    if choice == "sparkling" 
        sparkling("sparkling") 
    else
        puts "Let's try this again!"
        start()
    end
end

def grr()
    puts "Pah! I think you need a different waiter!"
    puts "GOODBYE!"
    puts; Process.exit(0)
end


start()
