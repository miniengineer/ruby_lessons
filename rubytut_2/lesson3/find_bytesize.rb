# Считаем байты
# Напишите программу, которая показывает, сколько байт занимает в памяти компьютера целое число 42 и строка "Вася".
#
# Придётся погуглить :)
#
# Пример результата:
#
# > ruby memory_usage.rb
# В числе 42 - 8 байт
# В строке "Василий" - 14 байт
#

num_bytesize = 42.size
str_bytesize = "hello".bytesize
puts "Number 42 is #{num_bytesize} bytesize"
puts "String \"hello\" is #{str_bytesize} bytesize"