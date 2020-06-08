#Сделайте так, чтобы приветствие каждый раз тоже было случайным:

welcome_message = [
  "Привет, дорогой друг. Отвечаю на твой вопрос...",
  "Кто вопрошает, тот получит ответ:",
  "Здравствуй, смертный. Сегодня для тебя такой ответ:"
]

puts welcome_message.sample

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
puts
puts answers.sample