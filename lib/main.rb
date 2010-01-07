require 'ruby_cowsay'

turtle = Cow.new({:cow => 'turtle'})

puts turtle.say("Here's the available faces!")
puts Cow.available_faces

puts turtle.say("Here's all of the available cows!")
puts Cow.available_cows