require_relative "bridge" 

puts "Let's ride!"

sleep 1

puts "Suddenly, there is a river ahead!"

sleep 1

bridge = Bridge.new

sleep 1

if !bridge.is_opened?
  bridge.open
end

sleep 1

puts "Continue our journey!"

# check if the value of is_opened is still true
puts bridge.is_opened?.to_s