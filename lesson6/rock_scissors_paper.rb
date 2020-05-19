# Над этой задачай нужно будет немного потрудиться, но не спешите.

# Напишите игру "камень - ножницы - бумага". Пользователь вводит свой вариант в консоли и играет против компьютера.
# И видит результат игры. Компьютер должен выбирать случайный вариант.

#   введите вариант: 0 - камень, 1 - ножницы, 2 - бумага
#   2
#   Вы выбрали: Бумага
#   Компьютер выбрал: Ножницы
#   Победил Компьютер

choices = ["rock", "scissors", "paper"]

puts "Please choose your weapon: 0 - rock, 1 - scissors, 2 - paper"
user_choice = gets.to_i
computer_choice = rand(3)

puts "You chose " + choices[user_choice].to_s + " as your weapon"
puts "Compoter chose " + choices[computer_choice].to_s + " as its weapon"
puts

if user_choice == 0
  if computer_choice == 0
    abort "Nobody wins"
  elsif computer_choice == 1
    abort "You win!"
  elsif computer_choice == 2
    abort "Computer wins!"
  end
elsif user_choice == 1
  if computer_choice == 0
    abort "Computer wins!"
  elsif computer_choice == 1
    abort "Nobody wins"
  elsif computer_choice == 2
    abort "You win!"
  end
elsif user_choice == 2
  if computer_choice == 0
    abort "You win!"
  elsif computer_choice == 1
    abort "Computer wins!"
  elsif computer_choice == 2
    abort "Nobody wins"
  end
end

