# На три веселых буквы...
# Напишите программу, которая читает текст из файла и считает количество слов из трех букв.

current_path = File.dirname(__FILE__)

if !File.exist?(current_path + "/words.txt")
  abort "Words file doesn't exist!"
end

file = File.new(current_path + "/words.txt")

words = file.readlines.each { |line| line.chomp! }
file.close

count = 0

for word in words do
  if word =~ /^[a-z]{3}$/i
    count += 1
  end
end

puts "You have #{count} three letter words in your file!"