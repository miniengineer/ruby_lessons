# Напишите программу, которая загадывает случайное число от 0 до 15 включительно и просит пользователя его угадать с трех попыток.

# При каждом вводе пользователем числа программа отвечает «тепло» если введенное число отличается от загаданного на 2 или меньше,
# «холодно» если на 3 и больше. В каждом ответе программа также подсказывает больше или меньше введенное число, 
# чем загаданное (выводит на экран "нужно больше" или "нужно меньше").

# Если число угадано точно за 3 попытки – программа завершается и поздравляет пользователя с победой.
# Если нет – выводит какое число было загадано.

#   Загадано число от 0 до 16, отгадайте какое?
#   > 8
#   Тепло (нужно больше)
#   > 10
#   Тепло (нужно меньше)
#   > 9
#   Ура, вы выиграли!
# В качестве развлечения найдите алгоритм гарантированно угадать число за 3 попытки.

num = rand(16)
success_msg = "Congratulations, your guess is correct!"

puts "Can you guess a number from 0 to 15?"
guess = gets.to_i

if guess == num
  abort success_msg
elsif num > guess && (num - guess).abs <= 2
  puts "Warm (need more)"
elsif num < guess && (num - guess).abs <= 2
  puts "Warm (need less)"
elsif num > guess && (num - guess).abs >= 3
  puts "Cold (need more)"
elsif num < guess && (num - guess).abs >= 3
  puts "Cold (need less)"
end

guess2 = gets.to_i

if guess2 == num
  abort success_msg
elsif num > guess2 && (num - guess2).abs <= 2
  puts "Warm (need more)"
elsif num < guess2 && (num - guess2).abs <= 2
  puts "Warm (need less)"
elsif num > guess2 && (num - guess2).abs >= 3
  puts "Cold (need more)"
elsif num < guess2 && (num - guess2).abs >= 3
  puts "Cold (need less)"
end

last_guess = gets.to_i

if last_guess == num
  abort success_msg
else puts "Fail! You couldn't guess the number which was " + num.to_s + "!"
end