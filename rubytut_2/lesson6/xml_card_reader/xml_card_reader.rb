# Чтение XML-визитки
# Сделайте свою визитку в формате XML.

# Укажите свои фамилию, имя, отчество, телефон, адрес электронной почты и немного напишите о своих навыках.

# Напишите программу, которая читает эту визитку в формате XML и красиво выводит информацию на экран.

# Например:

# Иван А. Попов
# +7 999 100-30-20, ivan.popov@mail.ru
# Начинающий программист на Ruby

require 'rexml/document'

current_path = File.dirname(__FILE__)
file_name = current_path + '/card.xml'

# check whether the file exists
abort 'File not found' unless File.exists? file_name

f = File.new(file_name)
doc = REXML::Document.new(f)

# don't forget to close the file
f.close

cards = Hash.new

doc.elements.each('cards/card') do |card|
  # use email as a key since it's always unique
  cards[card.attributes['email']] ||= {}
  cards[card.attributes['email']][:name] = card.text.strip!
  cards[card.attributes['email']][:phone_number] = card.attributes['phone_number']
  cards[card.attributes['email']][:occupation] = card.attributes['occupation']
end

cards.each_pair do |email, info_hash|
  puts info_hash[:name]
  puts "#{info_hash[:phone_number]}, #{email}"
  puts info_hash[:occupation]
end
