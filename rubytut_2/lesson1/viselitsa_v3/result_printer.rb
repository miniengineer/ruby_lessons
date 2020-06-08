class ResultPrinter

  def initialize
    @status_image = []

    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <= 7 do
      file_name = current_path + "/viselitsa_data/images/#{counter}.txt"
      
      begin
        f = File.new(file_name)
        @status_image << f.read
        f.close
      rescue SystemCallError
        @status_image << "\n[Image not found]\n"
      end

      counter += 1
    end
  end

  def print_status(game)
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

  def print_viselitsa(errors)
    puts @status_image[errors]
  end
end