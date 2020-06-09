# Понять, объявлена ли переменная
# Найдите в интернете способ выяснить объявлена ли переменная, и напишите программу, которая пишет, объявлены ли переменные a и b.
#
#     Затем объявите переменную a и запустите программу.
#
#         Получится примерно так:
#
#                                Переменная 'a' определена
# Переменная 'b' не определена
#
a = 1

if defined? a
  puts 'Variable "a" is defined'
else
  'Variable "a" is undefined'
end

if defined? b
  puts 'Variable "b" is defined'
else
  puts 'Variable "b" is undefined'
end