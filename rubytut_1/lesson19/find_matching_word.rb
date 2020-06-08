require_relative "methods"

regexp_string = get_random_regex_string
count = 0

puts "Come up with words that matches the following regex:"
puts "#{regexp_string.gsub(".", "*")}"

loop do
  word = STDIN.gets.chomp

  if word.downcase == "x"
    break
  end

  if word_exists?(word)
    if word =~ /#{regexp_string}/
      puts ".. OK =)"
      count += 1
    else
      puts ".. doesn't match =("
    end
  else
    puts "This word doesn't exist!"
  end
end

puts "Game Over, your score is: #{count}"
