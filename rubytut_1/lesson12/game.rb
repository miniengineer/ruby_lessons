class Game
  def initialize(word)
    @letters = get_letters(word)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end

  def get_letters(word)
    if (word == nil || word == "")
      abort "Please input a word!"
    end
    return word.split("")
  end

  def ask_next_letter
    puts "Please input a letter"

    letter = ""
    while letter == "" do
      letter = STDIN.gets.chomp
    end

    next_step(letter.downcase)
  end

  def next_step(letter)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(letter) || @bad_letters.include?(letter)
      return
    end

    if @letters.include? letter
      @good_letters << letter
      
      if @good_letters.size == @letters.uniq.size
        @status = 1
      end

    else
      @bad_letters << letter
      @errors += 1

      if @errors >= 7
        @status = -1
      end

    end
  end

  def letters
    @letters
  end

  def good_letters
    @good_letters
  end

  def bad_letters
    @bad_letters
  end

  def errors
    @errors
  end

  def status
    @status
  end
end