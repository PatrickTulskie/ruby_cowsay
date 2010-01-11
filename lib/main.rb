require 'ruby_cowsay'

turtle = Cow.new({:cow => 'turtle'})

puts turtle.say("Here's the available faces!")
puts Cow.faces

puts turtle.say("Here's all of the available cows!")
puts Cow.cows

c = Cow.new({:face_type => 'paranoid'})
c.face_type = 'stoned'
puts c.say 'whoa dude.'