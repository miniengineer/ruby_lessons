# Объявите в программе два разных массива строк: один, состоящий из нескольких мужских имен, другой — из женских.

# Как угодно создайте третий массив так, чтобы он состоял из всех элементов первого
# и второго массивов (т. е. из всех мужских и женских имен), не повторяя эти имена в коде.
# То есть, используя элементы из первых двух массивов.

# Потом выведите все три массива на экран.

# Например:

# Мужчины
# ["Gena", "George", "Misha"]
# Женщины
# ["Katrin", "Liza", "Masha"]
# Все вместе
# ["Gena", "George", "Misha", "Katrin", "Liza", "Masha"]


woman_names = ["Minira", "Lina", "Fatya"]
men_names = ["Vadim", "Kamil", "Richard"]

names_together = Array.new
names_together.concat(woman_names, men_names)

names_together_v2 = woman_names + men_names
puts "Women" + woman_names.to_s
puts "Men" + men_names.to_s
puts "Women and Men" + names_together.to_s
puts "Women and Men v2" + names_together_v2.to_s
