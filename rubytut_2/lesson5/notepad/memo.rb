require 'pry'

class Memo < Post

  def read_from_console
    puts "New note (everything that is written before \"end\" keyword):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    binding.pry
    time_string = "Created_at: #{@created_at.strftime("%Y.%m.%d, %H:%M")} \n\r \n\r"

    return @text.unshift(time_string)
  end
end
