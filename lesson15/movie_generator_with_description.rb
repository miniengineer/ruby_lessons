# Фильм на вечер с описанием
# Дополните предыдущую программу описанием к фильму.
# В файле со списком фильмов следующей строкой после название идет краткое описание.
# То есть каждая вторая строка файла содержит описание к фильму на предыдущей строке.

# А при вызове программы, выводите произвольный фильм с описанием:

# Кавказская пленница, или Новые приключения Шурика

# Отправившись в одну из горных республик собирать фольклор, герой фильма Шурик влюбляется в симпатичную девушку,
# «спортсменку, отличницу, и просто красавицу». Но ее неожиданно похищают, чтобы насильно выдать замуж.
# Наивный Шурик не сразу смог сообразить, что творится у него под носом,
# однако затем отважно ринулся освобождать «кавказскую пленницу»...

current_path = File.dirname(__FILE__)
file_name = current_path + "/movies/movies_with_description.txt"

if !File.exist?(file_name)
  abort "Movies file not found!"
end

f = File.new(file_name)
lines = f.readlines
f.close
movies = []
descriptions = []

lines.each_with_index { |line, index| index.even? ? movies << line : descriptions << line }
random_movie = movies.sample

puts random_movie
puts descriptions[movies.index(random_movie)]
