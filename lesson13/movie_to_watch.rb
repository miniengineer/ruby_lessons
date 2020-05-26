# Фильмы с режиссерами
# Напишите программу, помогающую выбрать какой фильм сегодня просмотреть.
# Создайте класс «Фильм». У него должно быть два свойства — название фильма и фамилия режиссера.
# Оба этих значения должны передаваться как параметры в конструкторе.

# Напишите программу, которая спрашивает у пользователя фамилию любимого режиссера,
# а затем спрашивает в цикле три раза три любимых фильма этого режиссера.

# В этом же цикле программа создает массив из объектов класса «Фильм».
# После чего программа должа выбрать случайный элемент этого массива и выводить его на экран.
# То есть показать имя режиссера и название фильма.

# Например:

# Фильмы какого режиссера Вы хотите посмотреть?
# > Роберт Земекис
# Какой-нибудь его хороший фильм?
# > Форрест Гамп
# Какой-нибудь его хороший фильм?
# > Назад в будущее
# Какой-нибудь его хороший фильм?
# > Экипаж

# И сегодня вечером рекомендую посмотреть: Форрест Гамп
# Режиссера: Роберт Земекис

require_relative "movie"


puts "Movies of which director you want to watch?"
director = STDIN.gets.chomp
options = []

3.times {
  puts "One of his greatest movies?"
  movie = STDIN.gets.chomp
  options << Movie.new(director, movie)
}

puts "Today I recommend you to watch: #{options[rand(3)].movie}"
puts "Director: #{options[0].director}"