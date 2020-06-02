# Транслитератор
# Напишите программу-транслитератор: программу, которая берёт русский текст и переводит его в созвучный английский.
# А если пользователь ввел фразу на английском, программа должна транслитерирорвать на русский.

# Например:

# Введите фразу для транслитерации:
# Отличный ёж
# Otlichnyy yezh
# или:

# Введите фразу для обратной транслитерации:
# Mama mila ramu
# Мама мила раму

require "translit"

puts "Please input sentence you wish to translit:"
text = STDIN.gets.chomp

puts Translit.convert(text)
