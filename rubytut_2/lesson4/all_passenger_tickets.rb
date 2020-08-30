# Много билетов пассажиров
# А теперь составьте массив хэшей с несколькими пассажирами в вагоне.

# Индекс хэша в массиве — место пассажира в вагоне.

# Затем выведите все билеты на экран.

# Например:

# > ruby passenger.rb
# Пассажиры поезда Москва — Петушки

# * * * Место № 1 * * *
# Билет № РМ2010398 050298
# Маршрут: Москва -> Петушки
# Пассажир: Венедикт В. Ерофеев
# Паспорт: 45 99 505281

# * * * Место № 2 * * *
# Билет № РМ2010399 050298
# Маршрут: Павловский Посад -> Орехово-Зуево
# Пассажир: Иннокентий П. Шниперсон
# Паспорт: 46 01 192872

# * * * Место № 3 * * *
# Билет № РМ2010399 050298
# Маршрут: Москва -> Владимир
# Пассажир: Иван В. Бунша
# Паспорт: 47 33 912876

passengers = [
  {
    "ticket": "0908080",
    "destination": "Hogwarts",
    "name": "Harry Potter",
    "passport": "P9042"
  },
  {
    "ticket": "09243080",
    "destination": "Silicon Valley",
    "name": "Richard Hendrix",
    "passport": "P934342"
  },{
    "ticket": "0902300",
    "destination": "Azerbaijan",
    "name": "Minira Samadova",
    "passport": "P90423242"
  },{
    "ticket": "0123546080",
    "destination": "Azerbaijan",
    "name": "Vadim Burlakin",
    "passport": "P9044342"
  }
]

passengers.each_with_index do |passenger, index|
  puts "*** Seat ##{index} ***"
  puts "Ticket #{passenger[:ticket]}"
  puts "Destination #{passenger[:destination]}"
  puts "Name #{passenger[:name]}"
  puts "Passport #{passenger[:passport]}"
  puts unless index === passengers.size - 1
end
