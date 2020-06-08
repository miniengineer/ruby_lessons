# Сегодня выходной? (с праздниками)
# Улучшите программу из ранних уроков, которая говорит, выходной ли сегодня.

# Сделайте так, чтобы программа говорила, что сегодня выходной не только если сегодня суббота или воскресенье,
# но и если сегодня один из государственных праздников.

# Список праздничных дней на ближайший год нагуглите в интернете и запишите в файл,
# который будет использовать ваша программа.

current_path = File.dirname(__FILE__)

file = File.new(current_path + "/holidays.txt")
holidays = file.readlines
file.close

# Alternatively could just use chomp! method in for loop
holidays.map! { |line| line.chomp }

today = Time.new

if today.saturday? || today.sunday? || holidays.include?(today.strftime("%B %d"))
  puts "Today is a weekend!"
else puts "Today is a weekday, get back to work!"
end
