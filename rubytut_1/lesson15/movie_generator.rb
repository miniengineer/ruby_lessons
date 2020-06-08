# Выбрать фильм на вечер
# Напишите программу, которая рекомендует фильм к просмотру, доставая его произвольно из файла со списком фильмов.

# Создайте файл, со списком фильмов (одна строка - одно название).
# И напишите программу, которая берёт произвольную строку и выводит название фильма на экран:

#   Сегодня Вам предлагается к просмотру фильм:
#   Бриллиантовая рука

current_path = File.dirname(__FILE__)
file_name = current_path + "/movies/movies.txt"

if !File.exist?(file_name)
  abort "Movies file not found!"
end

f = File.new(file_name)
movies = f.readlines
f.close

puts "Today I recommend you to watch:"
puts movies.sample