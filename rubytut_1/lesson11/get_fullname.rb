require_relative "human"

human = Human.new("Minira", "Samadova")
human2 = Human.new("Vadim", "Burlakin")
human3 = Human.new("Igor", "Michailov")

puts "You have three people:"

sleep 1

puts human.get_fullname

sleep 1

puts human2.get_fullname

sleep 1

puts human3.get_fullname