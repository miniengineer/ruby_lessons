# Сундук желаний
# Напишите программу «Сундук желаний».

# Программа спрашивает у пользователя в консоли, чего он хочет и до какой даты он хочет,
# чтобы его желание исполнилось, а потом записывает это всё в XML-файл.

# Например:

# В этом сундуке хранятся ваши желания.
# Чего бы вы хотели?

# > Сделать курс по Node.JS

# До какого числа вы хотите осуществить это желание?
# (укажите дату в формате ДД.ММ.ГГГГ)

# > 8.3.2018

# Ваше желание в сундуке

require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)
file_name = current_path + '/wish_list.xml'

unless File.exists? file_name
  # With no associated block, File.open is a synonym for ::new.
  # If the optional code block is given, it will be passed the opened file as an argument
  # and the File object will automatically be closed when the block terminates.
  # The value of the block will be returned from File.open.
  File.open(file_name, 'w:UTF-8') do |file|
    file.puts "<?xml version='1.0' encoding='UTF-8'?>"
    file.puts '<wishes></wishes>'
  end
end

# don't need to close file, since we are just reading it
f = File.read(file_name, encoding: 'UFT-8')

begin
  doc = REXML::Document.new(f)
rescue REXML::ParseException => e
  puts 'Invalid XML file'
  abort e.message
end

puts 'This list contains all your wishes.'

puts 'Anything you want to add to the list?'
wish = STDIN.gets.chomp

puts 'What is the wish deadline?'
puts 'Please input date in the DD.MM.YYY format'
date_input = STDIN.gets.chomp
wish_deadline = Date.parse(date_input)

wishes = doc.elements.find('wishes').first

new_wish = wishes.add_element 'wish', {
  'deadline' => wish_deadline
}

new_wish.text = wish

f = File.new(file_name, 'w:UTF-8')
doc.write(f, 2)

f.close

puts 'Your wish was added successfully!'


