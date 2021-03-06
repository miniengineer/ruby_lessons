# Бодибилдеры
# Создайте класс Бодибилдер.

# У него должно быть одно свойство на каждую группу мышц (сколько всего мышц, решайте сами, главное, не меньше 3).
# Напишите конструктор, который создаёт бодибилдера-хиляка, у которого все мышцы по нулям.

# Потом создайте для нашего бодибилдера метод прокачать мышцу: в качестве параметра передаётся название мышцы,
# которое совпадает с названием свойства соответствующей группы мышц.
# Метод увеличивает эту мышцу на 1.
# Создайте также метод, который выводит на экран «прокачку» бодибилдера:
# на разных строчках выводит текущее состояние каждой группы мышц.

# Подключите класс, создайте двух-трёх бодибилдеров, покачайте их и покажите их жюри.
# Например:

# Первый бодибилдер:
# Бицепсы: 7
# Трицепсы: 5
# Дельтовидка: 10

# Второй бодибилдер:
# Бицепсы: 4
# Трицепсы: 10
# Дельтовидка: 7

# Третий бодибилдер:
# Бицепсы: 5
# Трицепсы: 8
# Дельтовидка: 4

class Bodybuilder
  def initialize
    @abs = 0
    @glute = 0
    @triceps = 0
    @biceps = 0
  end

  def show_muscles
    return "
    Abs: #{@abs},
    Glute: #{@glute}
    Triceps: #{@triceps}
    Biceps: #{@biceps}"
  end

  def workout(muscle)
    case muscle
    when "abs"
      @abs += 1
    when "glute"
      @glute += 1
    when "triceps"
      @triceps += 1
    when "biceps"
      @biceps += 1
    else
      return "Please input either abs, glute, triceps or biceps!"
    end
  end

end