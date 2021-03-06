# Сундук несбывшихся желаний
# А теперь стремительно напишите для вашего «Сундука желаний» скрипт, который выводит

# желания, которые уже должны были сбыться на текущий день;
# желание, которым ещё предстоит сбыться.
# Как-то так:

# Эти желания должны уже были сбыться к сегодняшнему дню
# 13.08.1912: Найти священный Грааль
# 20.07.1944: Захватить мир
# 13.08.2015: Протестировать работу программы "Сундук желаний"

# А этим желаниям ещё предстоит сбыться
# 08.03.2018: Сделать курс по Node.JS

# TODO
# rewrite implementation with OOP
# make Wish a class

require 'rexml/document'
require 'date'
require_relative 'wish'

current_path = File.dirname(__FILE__)
file_path = current_path + '/wish_list.xml'

abort 'File not found' unless File.exists? file_path

f = File.read(file_path, encoding: 'UTF-8')

begin
  doc = REXML::Document.new(f)
rescue REXML::ParseException => e
  puts 'Invalid XML file'
  abort e.message
end

current_date = Date.today

# wishes = {
#   past_wish: [],
#   future_wish: []
# }

wish_list = {
  overdue: [],
  not_overdue: []
}

doc.root.elements.each('wish') do |wish|
  new_wish = Wish.new(wish)
  wish_list[new_wish.overdue ? :overdue : :not_overdue] << new_wish
end

puts 'The following wishes must have been fullfilled by today:'
wish_list[:overdue].each do |wish|
  puts wish.to_s
end

puts

puts 'The following wishes are yet to be fulfilled:'
wish_list[:not_overdue].each do |wish|
  puts wish.to_s
end
