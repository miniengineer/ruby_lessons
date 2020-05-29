class WordReader

  def read_from_file(file_path)
    if File.exist?(file_path)
      f = File.new(file_path)
      lines = f.readlines
      f.close
      return lines.sample.chomp
    else
      nil
    end
  end

end
