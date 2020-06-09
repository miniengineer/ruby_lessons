# Шифрование MD5, SHA1
# Напишите программу, которая шифрует введённое пользователем слово одним из механизмов MD5 или SHA1.
#
#     Например:
#
#     Введите слово или фразу для шифрования:
#      Хороший программист
#
# Каким способом зашифровать:
#  1. MD5
# 2. SHA1
# 1
#
# Вот что получилось:
# 9136d475e0fbf87e4fcdc9cb6c38ccc4
require 'digest'

puts 'Please enter sentence you want to encode:'
text = STDIN.gets.chomp

puts 'Please specify how you want to encode:'
puts '1. MD5'
puts '2. SHA1'
encode = STDIN.gets.to_i

puts 'The result is:'

if encode == 1
  puts Digest::MD5.hexdigest(text)
else
  puts Digest::SHA1.hexdigest(text)
end