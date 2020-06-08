require_relative "game"
require_relative "result_printer"
require_relative "word_reader"

path = File.dirname(__FILE__)
words_path = path + "/viselitsa_data/words.txt"

printer = ResultPrinter.new
word_reader = WordReader.new
word = word_reader.read_from_file(words_path)
game = Game.new(word)

while game.status == 0 do
  printer.print_status(game)

  game.ask_next_letter
end

printer.print_status(game)
