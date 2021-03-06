# Послушные дети
# Создайте класс Родителя и унаследуйте от него класс Ребёнка.

# Сделайте так, чтобы родителю при создании можно было задать имя,
# а с помощью метода name у экземпляра класса можно было это имя посмотреть.

# Создайте метод послушности так, чтобы все родители были послушные, а дети — нет.

# Например:

# Василий Игоревич послушный: true
# Маша послушная: false
# Коля послушный: false

require_relative 'Parent'
require_relative 'Child'

p = Parent.new('Minira')
c = Child.new('Alex')

puts "#{p.name}: #{p.diligent}"
puts "#{c.name}: #{c.diligent}"

