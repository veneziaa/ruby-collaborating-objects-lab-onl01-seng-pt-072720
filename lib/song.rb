class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    #this is calling the #artist_name=
    #it is a writer method that assigns that variable to artist
    #you are not just assigning the string to artist, because you want the artist attribute to be an artist instance instead
    song.artist_name = artist
    song
  end

 
  def artist_name=(name)
    self.artist = Artist
    self.artist.add_song(self)
  end

end

