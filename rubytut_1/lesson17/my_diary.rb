puts "Hi, I am your diary. Do you have anything to share?"
puts "I will save everything you will write till the \"end\" line in file."
puts

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
  line = STDIN.gets.chomp
  all_lines << line
end

time = Time.now

file_name = time.strftime("%Y-%m-%d") # 2020-06-02

time_string = time.strftime("%H:%M") # 22:30

separator = "--------------------------------------------"

file = File.new(current_path + "/" + file_name + ".txt", "a")

file.print("\n" + time_string + "\n")
 
all_lines.pop

for item in all_lines do
  file.puts(item)
end

file.puts(separator)

file.close

puts "Your memo is saved in #{file_name}.txt"
