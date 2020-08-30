class Link < Post

  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts 'Please input URL:'
    @url = STDIN.gets.chomp

    puts 'URL description:'
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Created_at: #{@created_at.strftime("%Y.%m.%d, %H:%M")} \n\r \n\r"

    return [@url, @text, time_string]
  end
end
