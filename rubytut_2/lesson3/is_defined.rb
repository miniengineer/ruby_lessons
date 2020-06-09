# Объявить три переменных:
#
#                  Глобальную переменную $a
# Локальную переменную b
# Переменную c внутри метода method
# Проверить объявлена ли каждая из них: внутри метода method и в основном тексте программы.
#
#     Пример результата:
#
# > ruby scopes.rb
# Переменная '$a': global-variable
# Переменная 'b':
# Переменная 'c': local-variable
# Переменная '$a': global-variable
# Переменная 'b': local-variable
# Переменная 'c':

def method
  c = 3

  puts "Variable \"$a\": #{defined? $a}"
  puts "Variable \"b\": #{defined? b}"
  puts "Variable \"c\": #{defined? c}"
end

$a = 1
b = 2

puts "Variable \"$a\": #{defined? $a}"
puts "Variable \"b\": #{defined? b}"
puts "Variable \"c\": #{defined? c}"

method