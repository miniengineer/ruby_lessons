# Отрезать N элементов от массива
# Написать метод, который возвращает массив, состоящий из первых N элементов другого массива,
# который передан в метод в качестве параметра.
# Исходный массив может состоять из чисел и быть объявлен в коде программы. Число N запрашивается у пользователя.
# Например:

# Вот какая палка колбасы у нас есть: 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# Сколько первых элементов вам отрезать?
# > 3
# Вот ваша колбаса:
# [1, 2, 3]
# Вот какая палка колбасы у нас есть: 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# Сколько первых элементов вам отрезать?
# > 84
# Вот ваша колбаса: 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

def cut_array(num, array)
  if (num == nil || num.to_i < 0 || num.to_i.to_s != num)
    return "Please enter a valid integer!"
  elsif (array.length < 0)
    return "Please enter a valid array!"
  elsif (num.to_i > array.length)
    return "Number of slices must be less or equal than number of elements in array!"
  end
  array.take(num.to_i)
end

puts "We have an array like this:"
puts array
puts "How many slices do you want?"

num = STDIN.gets.chomp
puts
puts "Here is your sliced array:"
puts cut_array(num, array)