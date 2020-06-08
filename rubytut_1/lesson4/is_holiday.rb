# Напишите программу, которая подсказывает, выходной сегодня или нет
# (для простоты мы не учитываем государственных праздников, итак много дней для безделья):

# Сегодня выходной!
# или

# Сегодня будний день, за работу!

today = Time.new

if today.saturday? || today.sunday?
  puts "Today is a weekend!"
else puts "Today is a weekday, get back to work!"
end