# Напишите конвертер валют рубли-доллары: программу, которая спрашивает курс,
# потом спрашивает у пользователя, сколько у него рублей, а потом выдает результат в долларах.
# Например:
# Сколько сейчас стоит 1 доллар в рублях?
# > 41.23
# Сколько  у вас рублей?
# > 30000
# Ваши запасы равны: $ 727.63


puts "What is the current rate?"
rate = gets.to_f
puts "How much money do you have?"
sum = gets.to_f
converted_sum = (sum / rate).round(2)
abort "Your savings are " + converted_sum.to_s + "$"