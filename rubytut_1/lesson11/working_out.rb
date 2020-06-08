require_relative "bodybuilder"

bodybuilder = Bodybuilder.new

bodybuilder2 = Bodybuilder.new

bodybuilder3 = Bodybuilder.new

4.times {
  bodybuilder.workout("abs")
  bodybuilder.workout("triceps")
  bodybuilder.workout("biceps")
  bodybuilder.workout("glute")
}

6.times {
  bodybuilder2.workout("abs")
  bodybuilder2.workout("triceps")
  bodybuilder2.workout("biceps")
  bodybuilder2.workout("glute")
}

7.times {
  bodybuilder3.workout("abs")
  bodybuilder3.workout("biceps")
  bodybuilder3.workout("glute")
}

puts "First bodybuilder:"
puts bodybuilder.show_muscles

sleep 1

puts
puts "Second bodybuilder:"
puts bodybuilder2.show_muscles

sleep 1

puts
puts "Third bodybuilder:"
puts bodybuilder3.show_muscles


