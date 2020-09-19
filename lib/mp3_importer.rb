  def MP3
    imported_files = self.files
    imported_files.each do |file|
      new_song = Song.new_by_filename(file)
    end
  end
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end

