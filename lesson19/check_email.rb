# Проверяем email
# Напишите программу, которая проверяет является ли введенный текст email-ом.

# Например:

# $ ruby email.rb 
# Введите email:
# install.vv@gmail.com
# Спасибо!

# $ ruby email.rb 
# Введите email:
# Какая-то фигня!
# Это не email

puts "Enter an email address:"
email = STDIN.gets.chomp

if email =~ /^[a-z\d]+\@[a-z]+\.[a-z]+$/i
  puts "Thank you!"
else
  puts "What the heck? It's not a valid email address!"
end
