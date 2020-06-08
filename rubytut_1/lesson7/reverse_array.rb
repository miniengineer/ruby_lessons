# Инвертирование массива циклом
# Напишите программу, которая перевернет порядок элементов любого исходного массива.
# Переверните массив сами с помощью цикла.

# Не используя встроенные методы reverse или reverse!

# Например:

# Исходный массив:
# [1, 2, 3, 4, 5, 6, 7]
# Новый массив, полученный из исходного:
# [7, 6, 5, 4, 3, 2, 1]

arr = [1, 2, 3, 4, 5, 6, 7]
length = arr.length - 1
reversed_arr = []

# Alternatively could use unshift method
# for item in arr do
# reversed_arr.unshift(item)
# end

while length >= 0 do
  reversed_arr << arr[length]
  length -= 1
end

puts "Initial array:"
puts arr
puts "Reversed array:"
puts reversed_arr