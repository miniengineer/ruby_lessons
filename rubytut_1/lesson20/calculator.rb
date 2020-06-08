# Целочисленный калькулятор
# Напишите простенький калькулятор, который умееет делать операции с двумя целыми (и только целыми) числами:
# сложение, вычитание, умножение, деление.

# Числа и операцию он по очереди спрашивает у пользователя.

#   Первое число:
#   50
#   Второе число:
#   10
#   Выберите операцию (+ - * /):
#   *
#   Результат:
#   500
# Добавьте в этот калькулятор обработку ошибок при попытке деления на ноль:

#   Первое число:
#   50
#   Второе число:
#   0
#   Выберите операцию (+ - * /):
#   /
#   Результат:
#   На ноль делить нельзя


puts "Enter first number:"
num1 = STDIN.gets.to_i

puts "Enter second number:"
num2 = STDIN.gets.to_i

puts "Choose operation to perform (+ - * /):"
operator = STDIN.gets.chomp.strip

puts "Result:"

case operator
when "+"
  puts "#{num1 + num2}"
when "-"
  puts "#{num1 - num2}"
when "*"
  puts "#{num1 * num2}"
when "/"
  if num1 == 0
    puts "You can't divide by 0"
  else
    puts "#{num1 / num2}"
  end
end
