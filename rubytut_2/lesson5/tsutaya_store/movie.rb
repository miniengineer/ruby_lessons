# frozen_string_literal: true

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

  def self.from_file(file_path)
    raise 'Invalid file' unless File.exists? file_path

    f = File.new(file_path)
    lines = f.readlines.map { |l| l.chomp }
    f.close

    params = {
      title: lines[0],
      director: lines[1],
      release_date: lines[2],
      price: lines[3],
      stock: lines[4]
    }

    self.new(params)
  end
end
