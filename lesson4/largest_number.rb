#В программе объявить две численные переменные, разные по значению. Вывести их на экран.
# Затем с помощью оператора if выбрать наибольшее из них и вывести его на экран.
# Если числа равны — программа должна сообщить об этом.

# Например:

# 172.169
# 31.514
# Наибольшее число: 172.169

num1 = 67
num2 = 67.5 

puts num1
puts num2

if num1 > num2
  puts "The largest number is " + num1.to_s
else puts "The largest number is " + num2.to_s
end