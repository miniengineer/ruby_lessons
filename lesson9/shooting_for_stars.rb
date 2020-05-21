# Shooting for the stars
# Написать метод, который выводит на экран строку, состоящую из звездочек *.
# Длина строки (количество звездочек) должно быть параметром метода.

# Программа должна спросить у пользователя в консоли длину строки и вывести на экран нужную строчку используя этот метод.

#   Сколько вам звезд на погоны?
#   17
#   Вот ваши звезды :) 
#   *****************

def show_stars
  puts "How many stars do you want?"
  num = STDIN.gets.chomp
  if (num == nil || num.to_i.to_s != num)
    return "Please input a valid number!"
  end

  num = num.to_i
  stars = ""
  # Alternatively can use string length as indicator
  # stars.length < num
  while num > 0 do
    stars += "*"
    num -= 1
  end

  stars
end

puts show_stars