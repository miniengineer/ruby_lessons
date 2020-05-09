# Модифицируйте конвертер валют из предыдущей задачи так, чтобы сначала он спрашивал у пользователя направление конвертации.

# Например:
# Какая у вас на руках валюта?
#   1. Рубли
#   2. Доллары
# > 2
# Сколько сейчас стоит 1 доллар?
# > 41.10
# Сколько у вас долларов?
# > 500
# Ваши запасы на сегодня равны: 20550 руб.
# Убедитесь, что программа правильно считает в обе стороны.

puts "Which currency you want to convert?
  1. RUB
  2. USD
"
currency = gets.to_i
puts "How much RUB does 1 USD cost?"
rate = gets.to_f

if currency == 1
  puts "How much USD do you have?"
  sum = gets.to_f
  converted_sum = (sum * rate).round(2)
  abort "Your savings are " + converted_sum.to_s + " RUB"
end

puts "How much RUB do you have?"
sum = gets.to_f
converted_sum = (sum / rate).round(2)
abort "Your savings are " + converted_sum.to_s + " USD"