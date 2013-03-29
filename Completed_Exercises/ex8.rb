#Excercise 8

formatter = "%s, %s, %s, %s"

puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]
puts formatter % [true, false, false, true]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
	"I had this thing.",
	"That you could type up right.",
	"But it didn't sing.",
	"So I said goodnight."
]

#1st time mistakes:
#missing the commas between sentances

#TRTHW is the first time I'm using %s, having a hard time thinking up an application for when to use this.
