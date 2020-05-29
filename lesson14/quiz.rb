# Викторина
# Создайте два файла: один с вопросами (по одному вопросу на одну строчку файла),
# другой с ответами на эти вопросы (также на каждой строчке один ответ).

# Например:

# questions.txt

# Сколько байт в килобайте?
# В каком году Гагарин полетел в космос?
# Сколько дней в высокосном году?
# answers.txt

# 1024
# 1961
# 366
# Напишите программу, которая считывает оба файла и задает пользователю в консоли последовательно все эти вопросы.

# Задав вопрос, программа ждет ответа пользователя в консоли.
# А затем сравнивает с правильным ответом и сообщает, правильно ответил пользователь, или нет.

# Если ответ неверный, программа сообщает какой ответ правильный.
# В конце сообщает результат — сколько было дано правильных ответов.

# Пример:

# Мини-викторина. Ответьте на вопросы.
# Сколько байт в килобайте?
# > 1024
# Верный ответ!

# В каком году Гагарин полетел в космос?
# > 1962
# Неправильно. Правильный ответ: 1961

# Сколько дней в высокосном году?
# > 366
# Верный ответ!

# У вас 2 правильных ответов из 3
# Только придумайте свои вопросы и ответы :)

path = File.dirname(__FILE__)
questions_path = path + "/quiz_data/questions.txt"
answers_path = path + "/quiz_data/answers.txt"

if File.read(questions_path) && File.read(answers_path)
  questions = File.new(questions_path)
  answers = File.new(answers_path)
else
  puts "Files are missing"
end

q_lines = questions.readlines
a_lines = answers.readlines

correct_answers = 0

puts "Mini Quiz: Please answer the questions"
q_lines.each_with_index do |line, index|
  puts line
  answer = STDIN.gets.chomp

  if answer.downcase.eql? a_lines[index].downcase.chomp
    puts "Correct!"
    correct_answers += 1
  else
    puts "Wrong answer! Correct answer is: #{a_lines[index]}"
  end
end

puts "You have #{correct_answers} correct answers from #{q_lines.size}"