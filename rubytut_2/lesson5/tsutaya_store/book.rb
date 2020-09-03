# frozen_string_literal: true

class Book < Item
  attr_accessor :title, :genre, :author

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Book '#{@title}', #{@genre}, author - #{@author}, $#{@price}. (only #{@stock} left)"
  end

  def self.from_file(file_path)
    current_path = File.dirname(__FILE__)
    
    raise 'Invalid file' unless File.exists? (current_path + file_path)

    f = File.new(current_path + file_path)
    lines = f.readlines.map { |l| l.chomp }
    f.close

    params = {
      title: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3],
      stock: lines[4]
    }

    self.new(params)
  end
end
