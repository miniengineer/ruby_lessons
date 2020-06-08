class WordReader

  def read_from_file(file_path)
    begin
      f = File.new(file_path)

      lines = f.readlines
      f.close
      return lines.sample.chomp
    rescue SystemCallError => error
      abort error.message
    end
  end

end
