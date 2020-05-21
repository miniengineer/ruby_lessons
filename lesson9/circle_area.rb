# Площадь круга
# Напишите метод, который будет принимать в качестве параметра радиус (radius),
# а возвращать в качестве результата — площадь круга с этим радиусом.
# Программа должна спросить у пользователя в консоли пару раз радиус и вывести площади кругов на экран.
# Например:

# Введите радиус круга:
# > 10
# Площадь круга: 314.159

# Введите радиус второго круга:
# > 5.7
# Площадь второго круга: 102.0702591

def find_radius (radius)
  if (radius == nil || radius.to_i < 0 || radius.to_i.to_s != radius)
    puts "Please input a positive number!"
    return
  end
  3.14 * radius.to_i
end

puts "Input first circle radius:"
radius = STDIN.gets.chomp
puts find_radius(radius)

puts "Input second circle radius:"
radius2 = STDIN.gets.chomp
puts find_radius(radius2)