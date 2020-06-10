# Поймем еще раз «классовую» область видимости.
#
# Объявите переменную variable
# После чего объявите класс MyClass и напишите у него конструктор, который создаёт переменную экземпляра @variable
# Напишите у класса метод check_variables, который проверяет объявлены ли переменные variable и @variable
# В основной программе создайте экземпляр класса MyClass и вызовите у него метод check_variables,
# а потом проверьте объявленность тех же переменных в основном тексте программы.

variable = 1

class MyClass
  def initialize
    @variable = 2
  end

  def check_variables
    puts "Variable is #{defined? variable}"
    puts "Variable is #{defined? @variable}"
  end
end

new_class = MyClass.new
puts 'Inside of MyClass:'
new_class.check_variables
puts
puts 'Outside of MyClass:'
puts "Variable is #{defined? variable}"
puts "Variable is #{defined? @variable}"