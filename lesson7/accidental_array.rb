# Максимальное из произвольных
# Объявите в программе пустой массив. Спросите у пользователя какой длины должен быть массив.

# Запомните выбор пользователя и наполните массив нужным количеством случайных чисел.
# Числа должны быть в диапазоне от 0 до 100 (вспомните метод rand из прошлых задач).
# Выведите получившийся массив на экран.

# После вывода массива найдите в нем максимальный по величине элемент и выведите на экран его значение.

# Например:

# Какой длины будет массив случайных чисел?
# > 9
# [55, 19, 54, 41, 74, 94, 87, 85, 49]
# Самое большое число:
# 94

puts "Input accidental array length"
length = gets.to_i

array = Array.new
while length > 0 do
  array << rand(101)
  length -= 1
end

puts array
puts "The greatest number is:"
puts array.max


