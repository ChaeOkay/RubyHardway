#Excercise 10

# "I am 6'2\" tall." #escape double-quote inside string
# 'I am 6\'2" tall.' #escape single-quote inside string

puts 'I am 6\'2" tall.' 

# this works also: puts "I am %s tall." % "6'2\""

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list: 
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

#Extra Credit
puts "Hello\b\bGoodbye world"
a = <<TITLE
This is another list
\t\t\ttext\n
\t\ttext\n
\ttext\n
TITLE

puts a