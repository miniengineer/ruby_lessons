# Люди и фильмы
# Объединяем людей и фильмы. Напишите программу,
# которая будет использовать одновременно два класса из предыдущих заданий (11-3 и 12-2).

# Добавьте в класс «Человек» поле, хранящее любимый фильм данного человека.
# В это поле будет записываться объект класса «Фильм».

# Также добавьте в класс «Человек» два метода: один будет записывать значение в это поле,
# другой будет возвращать текущее значение этого поля.

# Создайте трех людей, каждому из них назначьте (с использованием нового метода) по одному фильму
# и выведите всех трех людей и их фильмы на экран.

# К примеру:

# Сергей
# с любимым фильмом: Челюсти
# Марина
# с любимым фильмом: Список Шиндлера
# Мадонна
# с любимым фильмом: Парк Юрского периода

require_relative "human"

person = Human.new("Minira", "Samadova")
person.save_favorite_movie("Nora Efron", "Julie & Julia")

person2 = Human.new("Vadim", "Burlakin")
person2.save_favorite_movie("J. J. Abrams", "Super 8")

person3 = Human.new("Taro", "Yamada")
person3.save_favorite_movie("Barry Levinson", "Rain man")

puts person.get_fullname
puts "with favorite movie: #{person.favorite_movie}"

puts person2.get_fullname
puts "with favorite movie: #{person2.favorite_movie}"

puts person3.get_fullname
puts "with favorite movie: #{person3.favorite_movie}"