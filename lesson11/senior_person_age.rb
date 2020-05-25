require_relative "senior"

human = Senior.new("Vadim", "Burlakin", 31)
human2 = Senior.new("Rodion", "Raskolnikov", 65)

puts "You have two people:"

sleep 1

puts human.get_fullname
puts "He is #{human.age} - #{human.is_old ? "old" : "young"}"

sleep 1

puts human2.get_fullname
puts "He is 65 - #{human2.is_old ? "old" : "young"}"

