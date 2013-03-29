#Excercise 41: Learning To Speak Object Oriented

=begin
	
WORD DRILLS
class = Tell ruby to make a new kind of thing.
object = Two meanings: the most basic kind of thing, and any instance of some thing.
instance = What you get when you tell Ruby to create a class.
def = How you define a funciton inside a class.
@ = inside the function in a class, @ is an operator for variables in the instance/object being accessed.
inheritance = The concept that one class can inherit traits from another class, much like you and your parents. 
composition = The concept that a class can be composed of other classes as parts, much like how a car has wheels.
attribute = A property classes have that are from composition and are usually variables.
is_a = A phrase to say that something inherits from another, as in a Salmon is_a Fish.
has_a = A phrase to say that something is composed of other things or has a trait, as in a Salmon has_a mouth. 

PHASE DRILLS
class X(Y) : Make a class named X that is_a Y
class X(object) def initialize(j) : class X has_a initalize that takes J parameters
class X(object) def M(j) : class X has_a function named M that takes J parameters
foo = X() : set foo to an instance of class X
foo.M(j) : from foo get the M function, and call it with parameters J
foo.k = Q : from foo get the K attribute and set it to Q

=end

require 'open-uri'

WORLD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
	"class ### < ###\nend" => "Make a class named ### that is-a ###.",
	"class ###\n\tdef initialize(@@@)\n\tend\tend" => "class ### has-a initialize that takes @@@ parameters.",
	"class ###\n\tdef ***(@@@)\n\tend\tend" => "class ### has-a function named *** that takes @@@ parameters.",
	"*** = ###.new()" => "Set *** to an instance of class ###.",
	"***.***(@@@)" => "From *** get the *** function, and call it with parameters @@@.",
	"***.*** = '***'" => "From *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == "english"

open(WORLD_URL) {|f|
	f.each_line {|word| WORDS.push(word.chomp)}
}

def craft_names(rand_words, snippet, pattern, caps=false)
	names = snippet.scan(pattern).map do  
		word = rand_words.pop()
		caps ? word.capitalize : word 
	end

	return names*2
end

def craft_params(rand_words, snippet, pattern)
	names = (0...snippet.scan(pattern).length).map do 
		param_count = rand(3) +1
		params = (0..param_count).map {|x| rand_words.pop()}
		params.join(', ')
	end
	return names*2
end

def convert(snippet, phrase)
	rand_words = WORDS.sort_by {rand}
	class_names = craft_names(rand_words, snippet, /###/, caps=true)
	other_names = craft_names(rand_words, snippet, /\*\*\*/)
	param_names = craft_params(rand_words, snippet, /@@@/)

	results = []

	for sentence in [snippet, phrase]
		#fake class names, also copies sentence
		result = sentence.gsub(/###/) {|x| class_names.pop}

		#fake other names
		result.gsub!(/\*\*\*/) {|x| other_names.pop}

		#fake parameter lists
		result.gsub!(/@@@/) {|x| param_names.pop}

		results.push(result)
	end
	return results
end

#keep going until they hit CNTRL-D
loop do  
	snippet = PHRASES.keys().sort_by {rand}

	for snippet in snippet
		phrase = PHRASES[snippet]
		question, answer = convert(snippet, phrase)

	if PHRASE_FIRST
		question, answer = answer, question
	end

	print question, "\n\n> "

	exit(0) unless STDIN.gets

	puts "\nANSWER: %s\n\n" % answer
end
end



