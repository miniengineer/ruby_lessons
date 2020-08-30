# Напишите программу, которая выводит билет пассажира поезда.

# Используйте своё воображение и ассоциативные массивы.

# Должно получиться как-то так:

# > ruby passenger.rb 

# Билет № РМ2010398 050298
# Маршрут: Москва — Петушки
# Пассажир: Венедикт В. Ерофеев
# Паспорт: 45 99 505281

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

passenger = passengers.sample
puts "Ticket #{passenger[:ticket]}"
puts "Destination #{passenger[:destination]}"
puts "Name #{passenger[:name]}"
puts "Passport #{passenger[:passport]}"
