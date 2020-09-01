class Movie < Item
  attr_accessor :title, :release_date, :director

  def initialize(params)
    super

    @title = params[:title]
    @release_date = params[:release_date]
    @director = params[:director]
  end

  def to_s
    "Movie '#{@title}', #{@release_date}, $#{@price}. (only #{@stock} left)"
  end
end
