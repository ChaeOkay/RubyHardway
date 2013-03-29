#Excercise 38: Doing Things To Lists

ten_things = "Apples Oranges Crows Telephone Light Sugar"
#starting with a string

puts  "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
#by splitting the string, we are turning it into an array

more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)
#making a separate array of items

while stuff.length != 10
	#while the stuff array does not have 10 items, do the following
	next_one = more_stuff.pop()
	#take the last item off the more_stuff array with the pop function
	puts "Adding: #{next_one}"
	stuff.push(next_one)
	#find the stuff array, and push the next_one variable (the last item in the other array)
	#into the stuff array on the end
	puts "There's #{stuff.length} items now."
	#since this is a while statement (or loop), this will repeate
	#until the while condition is false (currently set to true)
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
#first indexed item in the array - cardinal
puts stuff[-1]
#last item in the array
puts stuff.pop()
#takes the last item off the array, and stores it in space
puts stuff.join(' ')
# joins all of the elements with a space inbetween
puts stuff.values_at(3,5).join('#')
#looks at values at cardinal 3 and 5, and joins them with a # mark

