current_path = File.dirname(__FILE__)

file = File.new(current_path + "/hello_file.txt", "a")

file.puts("Hello, file!")
file.close
