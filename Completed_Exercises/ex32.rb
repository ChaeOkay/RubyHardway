#Excercise 32: Loops and Arrays


hairs = ['brown', 'blond', 'red']
eyes = ['brown', 'blue', 'green']
weights = [1, 2, 3, 4]

the_count = [1, 2, 3, 4, 5]
fruits = ['appples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for-loop goes through an Array
for number in the_count
    puts "This is count #{number}"
end

#same as above, but using a block instead
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

#also we can go through mixed arrays too
for i in change
    puts "I got #{i}"
end

#We can also build arrays, first start with an empty one
elements = []

#then use a range of objects to do 0 to 5 counts
for i in (0..5)
    puts "Adding #{i} to the list."
    #push is a function that arrays understand
    elements.push(i)
end

#now we can puts them out too
for i in elements
    puts "Element was: #{i}"
end

#EXTRA CREDIT
puts "Adding another range to list without a for loop"
(6..9).each {|x| elements.push(x)}

for t in elements 
    puts "New array is: #{t}"
end

puts "Adding another range using a different kind of push"
(10..12).each do |v| 
    elements<<v
    puts "Newer new array is: #{v}"
end
