class Bridge
  # constructor of bridge class
  def initialize
    puts "Bridge is build"
    # this classes properties 
    # always have @ in the name
    @opened = false
  end

  def open
    puts "Bridge is open, you can ride"
    @opened = true
  end

  def is_opened?
    return @opened
  end

end 