def get_word_input
  word = ARGV[0]
  if (word == nil || word == "")
    abort "Please provide a valid word!"
  end
  word = word.split("")
  return word
end

def get_letter_input
  letter = STDIN.gets.chomp
  while letter == nil || letter == "" do
    puts "Please enter a letter!"
    letter = STDIN.gets.chomp
  end
  return letter
end

def clean_terminal
  system("clear") or system("clc")
end

def draw_word(word_arr, letters_arr)
  string = ""
  
  for letter in word_arr
    if letters_arr.include?(letter)
      string += "#{letter} "
    else 
      string += "_ "
    end
  end

  puts string
end

def check_result(word, user_input, good_letters, bad_letters, errors)
  if word.include?(user_input)
    good_letters << user_input
    if word.uniq.join.size == good_letters.size
      return 1
    end
    return 0
  else
    bad_letters << user_input
    return -1
  end
end