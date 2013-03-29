my_name = 'Chae'
my_age = 29
my_height = 61 # inches
my_weight = 103
my_eyes = 'brown'
my_teeth = 'white'
my_hair = 'black'

puts "Let's talk about %s." % my_name
puts "She's %d inches tall." % my_height
puts "She's %d pounds heavy." % my_weight
puts "Actually, that's about right."
puts "She's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "Her teeth are always %s!" % my_teeth

puts "If i add %d, %d, and %d I get %d." % 
[my_age, my_height, my_weight, my_age+my_height+my_weight]

#extra credit
puts ""
puts ""


n = 'Chae'
a = 29
h = 61 # inches
w = 103
wk = w*0.453592
e = 'brown'
t = 'white'
ha = 'black'

puts "Let's talk about %s." % n
puts "She's %d inches tall." % h
puts "She's %d pounds heavy." % w
puts "in other words, she's %d kilograms heavy." % wk
puts "Actually, that's about right."
puts "She's got %s eyes and %s hair." % [e, ha]
puts "Her teeth are always %s!" % t

puts "If i add %d, %d, and %d I get %d." % 
[a, h, w, a+h+w]