require_relative "viselitsa_methods"

word = get_word_input
clean_terminal

good_letters = []
bad_letters = []
errors = 0

puts "A word was determined! Let's start our game :)"
sleep 1
# draw_word(word, good_letters)

while errors < 7 do
  draw_word(word, good_letters)
  puts

  puts "Please input a letter:"
  letter = get_letter_input

  result = check_result(word, letter, good_letters, bad_letters, errors)
  puts result

  if (result == 1)
    puts "You WON! You guessed the " + word.join + " word correctly!"
    puts "you had total of " + errors.to_s + " errors."
    exit
  elsif result == -1
    errors += 1
  end

  puts "Hurry up and guess the word!" 
end

puts "Sorry, you lost the game this time :("