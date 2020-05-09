# Напишите программу, которая находит среднее арифметическое трех, введенных пользователем целых чисел.
# Например:
# Введите число 1:
# > -23
# Введите число 2:
# > 42
# Введите число 3:
# > 5
# Среднее арифметическое: 8

puts "Please enter first number"
num1 = gets
puts "Please enter second number"
num2 = gets
puts "Please enter third number"
num3 = gets
average = (num1.to_i + num2.to_i + num3.to_i) / 3
abort "Average number is " + average.to_s