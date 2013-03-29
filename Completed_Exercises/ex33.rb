#Excercise 33: While Loops

i = 0
numbers = []

while i<6
    puts "At the top i is #{i}"
    numbers.push(i)

    i = i +1
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
    puts num
end

#EXTRA CREDIT
#1st try not quite...

def add(t)
    while t<6
    puts "At the top t is #{t}"
    other = []
    other.push(t)

    t += 1
    puts "Array now: #{other}"
    puts "At the end of this method our number is #{t}"
    end
end

add(0)

#I can't figure out why my array is being replaced 
#by the new t number when my add method loops. 
#I've tried moving the "other" array out side of the method, 
#but then the method can't find the array. I guess if this was
# a class instance, I could make the variable global?

#x is the lower limit
#y is the upper limit
#z is the name of the has

#2nd try...
def method2(x, y, z)
    z = []
    x > y ? x == 0 : x == x

    until x>=y
        puts "At the top x is #{x}"
        z.push(x)

        x = x +1
        puts "Numbers now: #{z}"
        puts "At the bottom x is #{x}"
    end
end

method2(20, 25, "go")