# Считаем строки в файлах
# Написать программу, которая считает сколько в указанном файле строк всего, сколько пустых строк,
# а также выводит на экран последние 5 строк этого файла.

# Пользователь вводит название файла в качестве параметра консоли при запуске.
# Если же файл не найден, то сообщает об этом пользователю.

# Проверьте работу программы на различных вами же придуманных файлах.
# Например:

# Открыли файл: data/file.txt
# Всего строк: 10
# Пустых строк: 4
# Последние 5 строк файла: 
 
# Это пятая строка с конца.
# Это четвёртая строка с конца.
# Это третья строка с конца.
# Это вторая строка с конца.
# Это последняя строка.

path = File.dirname(__FILE__)
current_path = path + "/data/exercise.txt"

if File.exists?(current_path)
  f = File.new(current_path)
  lines = f.readlines
  f.close
  empty_lines = 0
  lines.each { |line| line.size < 2 ? empty_lines += 1 : nil }
  puts "Opened file: #{current_path}"
  puts "Total number of lines: #{lines.size}"
  puts "Empty lines: #{empty_lines}"
  puts "Last 5 lines:"
  puts
  puts lines[-5, lines.size - 1]
else
  puts "No"
end