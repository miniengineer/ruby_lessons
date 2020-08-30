# Объединение хэшей
# Вы приехали к бабушке на дачу и пошли за покупками.

# Написали два хэша (товар: количество): один для покупок в продуктовом, другой — в хозяйственном.
# А вышло так, что всё равно в районном сельпо всё продаётся вместе.

# Напишите программку, которая объединяет ваши списки в один и выводит его на экран.

grocery_list = {
  "bread": 1,
  "milk": 2,
  "apple": 3
}

home_depot_list = {
  "soap": 6,
  "detergent": 1,
  "kitchen_sponge": 4
}

buying_list = grocery_list.merge(home_depot_list)

puts 'Buy:'
buying_list.each_pair { |item, quantity| puts "#{quantity} #{item}" }


