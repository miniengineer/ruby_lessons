# XML магазин
# В домашнем задании к прошлому уроку мы писали магазин, который торговал музыкой, фильмами и книжками.
# Не удобно и не правильно создавать их руками прямо в коде программы.

# Научите магазин читать данные из отдельного XML-файла.

# Например:

# >ruby main.rb
# Что хотите купить?

# 0: Книга «Приключения Тома Сойера», автор: Марк Твен — 1000 руб. [осталось: 5]
# 1: Книга «Воспоминания Шерлока Холмса», автор: Артур Конан Дойль — 1100 руб. [осталось: 1]
# 2: Диск Judas Priest — Turbo (Heavy Metal) — 500 руб. [осталось: 2]
# 3: Диск Judas Priest — Ram It Down (Heavy Metal) — 550 руб. [осталось: 3]
# 4: Фильм «Пролетая над грездом кукушки», реж. Милош Форман — 350 руб. [осталось: 3]
# x. Покинуть магазин

# x
# Спасибо за покупки, с Вас 0 руб.

require 'rexml/document'

current_path = File.dirname(__FILE__)
file_name = current_path + '/products.xml'

abort 'File not found' unless File.exists? file_name

f = File.new(file_name)
doc = REXML::Document.new(f)

# don't forget to close file after reading it
f.close

products = []

# add all items to products
# slightly change text depending on the product type
doc.root.elements.each do |item|
  case item.name
  when 'book'
    products << 
    "Book '#{item.elements['title'].text}', author: #{item.elements['author'].text} - #{item.elements['price'].text}. [#{item.elements['amount'].text} left]"
  when 'movie'
    products << 
    "Movie '#{item.elements['title'].text}', director: #{item.elements['director'].text} - #{item.elements['price'].text}. [#{item.elements['amount'].text} left]"
  end
end

puts 'What do you want to buy?'
puts
products.each_with_index do |item, index|
  puts "#{index}: #{item}"
end
puts "Type 'x' and press ENTER to leave the store"
key = ''

while key != 'x' do
  key = STDIN.gets.chomp
end


