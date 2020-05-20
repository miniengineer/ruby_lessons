# Поют ли соловьи?
# В городском парке живут соловьи. Однако, их редко слышно, потому что они поют только
# когда температура на улице от 22 до 30 градусов в любое время года.
# Летом они поют при температуре от 15 до 35 градусов.

# Напишите программу, которая определяет, поют в данный момент соловьи или нет.
# Текущую температуру и время года программа должна брать из аргументов командной строки.
# А если их не передали — спрашивать у пользователя.
# Например:
# $ ruby nightingales.rb 10 0
# Сейчас соловьи молчат, греются или прохлаждаются :)
# $ ruby nightingales.rb
# Какая сейчас температура?
# > 15
# Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)
# > 1
# Скорее идите в парк, соловьи поют!

season = nil
weather = nil

if !ARGV.empty?
  weather = ARGV[0]
  season = ARGV[1]
else
  while weather.nil? do
    puts "What is the weather temperature today?"
    begin 
      weather = Integer(STDIN.gets.chomp)
    rescue ArgumentError
      puts "Please enter a number"
      retry
    end
  end
  while season.nil? || !season.between?(0, 3) do
    puts "What is the current season? (0 - spring, 1 - summer, 2 - autumn, 3 - winter)"
    begin 
      season = Integer(STDIN.gets.chomp)
    rescue ArgumentError
      puts "Please enter a number"
      retry
    end
  end
end

if season == 1 && weather.between?(15, 35) || season != 1 && weather.between?(22,30)
  puts "Go to the park immedeately, birds are chirping!"
else puts "Currently birds are either resting or warming themselves :)"
end
