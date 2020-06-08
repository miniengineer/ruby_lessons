# Сделайте так, чтобы ваш «Волшебный шар» прежде, чем выводить свой ответ, здоровался с пользователем:
#Например:
#Привет, дорогой друг. Отвечаю на твой вопрос...
  
#Знаки говорят – да.
#Да, пустая строка между приветствием и ответом тоже нужна!

puts "Hi there, answering your question..."

answers = [
  # Positive
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes — definitely",
  "You may rely on it",
  
  # Slightly positive
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Signs point to yes",
  "Yes",

  # Neutral
  "Reply hazy, try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",

  # Negative
  "Don’t count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]
puts ""
puts answers.sample