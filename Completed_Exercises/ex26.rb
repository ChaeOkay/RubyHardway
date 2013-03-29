
# This function will break up words for us.
def break_words(stuff)
    words = stuff.split(' ')
    return words
end

# Sorts the words.
def sort_words(words)
    return sorted(words)
end

# Prints the first word after popping it off.
def puts_first_words(words)
	#method name needed an s at the end
	#changed poop to pop
    word = words.pop(0)
    puts word
end

# Prints the last word after popping it off.
def puts_last_words(words)
	#method name needed an s at the end
	#included other parenthasis
    word = words.pop(-1)
    puts word
end

# Takes in a full sentence and returns the sorted words.
def sort_sentence(sentence)
    words = break_words(sentence)
    return sort_words(words)
end

# Puts the first and last words of the sentence.
def puts_first_and_last(sentence)
    words = break_words(sentence)
    puts_first_word(words)
    puts_last_word(words)
end

# Sorts the words then prints the first and last one.
def puts_first_and_last_sorted(sentence)
    words = sort_sentence(sentence)
    puts_first_word(words)
    puts_last_word(words)
end


puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."
#quotes not apostrophies

#needs MULTI_LINE_STRING
poem = <<MULTI_LINE_STRING
The lovely world 
with logic so firmly planted
cannot discern the needs of love
nor comprehend passion from intuition 
requires an explantion
where there is none.

MULTI_LINE_STRING


puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 6
#numbers don't add to 5
puts "This should be five: #{five}" 
#needs string interpolation reference

def secret_formula(started)
    jelly_beans = started * 500
    #changed forward slash to back slash
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)
#one equal sign, not two that is for numbers
#start point needs underscore, not dash

puts "With a starting point of: #{start_point}" # needs string interpolation
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates." # needs string interpolation

start_point = start_point / 10

beans, jars, crabapples = secret_formula(start_point)
puts "We can also do that this way: #{start_point}" # needs string interpolation
puts "We'd have #{beans} beans, #{jars} jars, and #{crabapples} crabapples." # needs string and new definition

=begin
This whole next section needs to be redone - no methods defined

sentence = "All good\tthings come to those who weight."
words = Ex25.break_words(sentence)
sorted_words = ex25.sorted_words(words) #sorted not sort

puts_first_word(words)
puts_last_word(words)
#no period here
puts_first_word(sorted_words)
puts_last_word(sorted_words)
sorted_words = ex25.sorted_sentence(sentence) #sorted_sentence
prints sorted_words #prints not ints
1
puts_first_and_last(sentence) #first not irst

puts_first_a_last_sorted(senence)
=end

module Ex25
    def self.break_words(stuff)
        words = stuff.split(' ')
        words
    end

    def self.sorted_words(words)
        words.sort()
    end

    def self.first_word(words)
        word = words.shift()
        puts word
    end

    def self.last_word(words)
        word = words.pop()
        puts word
    end

    def self.first_and_last(sentence)
        words = break_words(sentence)
        first_word(words)
        last_word(words)
    end

    def self.first_and_last_sorted(sentence)
        words = break_words(sentence)
        sorted_words(words)
        first_word(words)
        last_word(words)
    end

end

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
puts words
puts
puts Ex25.sorted_words(words)
puts
Ex25.first_word(words)
puts
Ex25.last_word(words)
puts
Ex25.first_and_last(sentence)
puts
Ex25.first_and_last_sorted(sentence)

#I changed the sentence to start with "only" to test the sorted function
#Doesn't seem to work... I'm wondering if it's because the first word 
#is indexed at 0??? not sure... I'm thinking a block method that uses <=>
#would be better for alphabetizing