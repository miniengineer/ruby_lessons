# Палиндром с пробелами
# Сделайте вторую версию программы «Палиндром», которая не учитывает наличие пробелов/знаков препинания во фразе.

# Сперва с помощью irb поймите, как убрать из строки все пробелы (не только те, что по краям) и знаки препинания.
# Посмотреть все методы объетка можно вызвав у него метод methods.

# Если не выйдет найти метод с пом. irb, погуглите или посмотрите документацию на класс String.

# Alternatively could use .delete method
word = STDIN.gets.chomp.downcase.tr(" ,.!?:;", "")
reversed_word = word.reverse

if word == reversed_word
  puts "It's a palindrome!"
else
  puts "Doesn't seem like a palindrome to me :("
end