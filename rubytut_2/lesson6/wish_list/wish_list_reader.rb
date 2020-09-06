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

require 'rexml/document'
require 'date'

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

wishes = {
  past_wish: [],
  future_wish: []
}

doc.root.elements.each('wish') do |wish|
  wish_deadline = wish.attributes['deadline']
  text = "#{wish.attributes['deadline'].to_s}: #{wish.text.strip!}"
  if Date.parse(wish_deadline) < current_date
    wishes[:past_wish] << text
  else
    wishes[:future_wish] << text
  end
end

# display list of past_wish wishes only if there are any
if wishes[:past_wish].size > 0
  puts 'The following wishes must have been fullfilled by today:'
  wishes[:past_wish].each { |wish| puts "\t#{wish}" }
end

puts 'The following wishes are yet to be fulfilled:'
wishes[:future_wish].each { |wish| puts "\t#{wish}" }
