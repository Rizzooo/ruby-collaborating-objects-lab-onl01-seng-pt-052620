class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def name=(name)
    @name = name
  end
  
  def self.new_by_filename(file)
    song = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
  def artist_name=(a_name)
    self.artist = Artist.find_or_create_by_name(a_name)
    artist.add_song(self)
  end
  
  def self.all 
    @@all 
  end
  
end