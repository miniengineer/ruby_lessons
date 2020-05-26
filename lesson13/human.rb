require_relative "movie"

class Human
  def initialize(name, surname)
    @name = name
    @surname = surname
    @favorite_movie = nil
  end

  def get_fullname
    @name + " " + @surname
  end

  def save_favorite_movie(director, movie)
    @favorite_movie = Movie.new(director, movie)
  end

  def favorite_movie
    @favorite_movie.movie
  end
end
