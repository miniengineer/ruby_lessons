# Массив из N элементов и сумма
# Написать программу, которая выводит массив чисел от 1 до N. И выводит сумму всех чисел этого массива.
# Число N спрашивается у пользователя из консоли.

# Например:

# Введите N
# > 7
# [1, 2, 3, 4, 5, 6, 7]
# Сумма чисел: 28

puts "Please input N"
n = gets.to_i
puts ">#{n}"

array = []
while n > 0 do
  array << n
  n -= 1
end
array.reverse!

sum = 0

# Alternatively use method sum of Array
# array.sum >> 28
for num in array do
  sum += num
end

puts array
puts "Sum of integers is #{sum}"
