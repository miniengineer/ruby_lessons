# Угадай число от 0 до 16 с методами
# Вспомните программу, где нужно за 3 попытки угадать число от 0 до 16, загаданное компьютером.

# Теперь когда вы знакомы с методами — перепишите программу так,
# чтобы не повторять три раза одну и ту же конструкцию if, вместо нее нужно три раза вызвать один метод.

# Убедитесь, что программа работает точно так же, как и старая.

num = rand(16)

def guess_number(num, guess)
  if (num == nil || guess == nil || !num.is_a?(Numeric) || guess.to_i.to_s != guess)
    puts "Please enter valid numbers"
    return
  end

  num = num.to_i
  guess = guess.to_i

  if num == guess
    abort "Your guess is correct!"
  elsif num > guess && (num - guess).abs <= 2
    puts "Warm (need more)"
  elsif num < guess && (num - guess).abs <= 2
    puts "Warm (need less)"
  elsif num > guess && (num - guess).abs >= 3
    puts "Cold (need more)"
  elsif num < guess && (num - guess).abs >= 3
    puts "Cold (need less)"
  end
end

puts "Can you guess a number from 0 to 15?"
guess1 = STDIN.gets.chomp
guess_number(num, guess1)

puts "Second guess"
guess2 = STDIN.gets.chomp
guess_number(num, guess2)

puts "Last guess"
guess3 = STDIN.gets.chomp
guess_number(num, guess3)

puts "Seems to me that you couldn't guess the number :("


