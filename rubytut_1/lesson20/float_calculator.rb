# Калькулятор с Float
# Напишите калькулятор, который работает с числами с плавающей точкой.

# Обратите внимание, что в этом случае на ноль делить можно (получится бесконечность Infinity) и не надо ловить исключения.

# Например:

# Первое число:
# > 92.7
# Второе число:
# > 0
# Выберите операцию (+ - * /):
# > /
# Результат:
# Infinity

puts "Enter first number:"
num1 = STDIN.gets.to_f

puts "Enter second number:"
num2 = STDIN.gets.to_f

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
    puts "Infinity"
  else
    puts "#{num1 / num2}"
  end
end