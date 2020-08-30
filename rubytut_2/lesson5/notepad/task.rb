require 'date'

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts 'What needs to be done?'

    @text = STDIN.gets.chomp

    puts "What is the due date? Please provide due date in the format of DD.MM.YYYY E.g.: 30.08.2020"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created_at: #{@created_at.strftime("%Y.%m.%d, %H:%M")} \n\r \n\r"

    deadline = "Deadline: #{@due_date}"

    return [deadline, @text, time_string]
  end
end
