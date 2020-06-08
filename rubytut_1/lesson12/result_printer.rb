class ResultPrinter

  def print_status(game)
    clean_screen
    puts "Word: " + get_word_for_print(game)

    puts "Errors (#{game.errors}): #{game.bad_letters.join(", ")}"

    print_viselitsa(game.errors)

    if game.status == -1
      puts "You've lost :("
    elsif game.status == 1
      puts "Congratulations, you won!"
    else
      puts "You have #{7 - game.errors} tries left"
    end
  end

  def get_word_for_print(game)
    result = ""

    for letter in game.letters do
      if game.good_letters.include? letter
        result += letter + " "
      else
        result += "__ "
      end
    end

    return result
  end

  def clean_screen
    system "clear" or system "cls"
  end

  def print_viselitsa(errors)
    case errors
    when 0
      puts "
            _______
            |/
            |
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          "
      when 1
        puts "
            _______
            |/
            |     ( )
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          "
      when 2
        puts "
            _______
            |/
            |     ( )
            |      |
            |
            |
            |
            |
            |
          __|________
          |         |
          "
      when 3
        puts "
            _______
            |/
            |     ( )
            |      |_
            |        \\
            |
            |
            |
            |
          __|________
          |         |
          "
      when 4
        puts "
            _______
            |/
            |     ( )
            |     _|_
            |    /   \\
            |
            |
            |
            |
          __|________
          |         |
          "
      when 5
        puts "
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |
            |
            |
          __|________
          |         |
          "
  
      when 6
        puts "
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          "
      when 7
        puts "
            _______
            |/     |
            |     (_)
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          "
    end
  end
end