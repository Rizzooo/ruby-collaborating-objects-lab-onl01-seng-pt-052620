class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def name=(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
  def artist_name=(a_name)
    if self.artist.nil?
      self.artist = Artist.new(a_name)
    else
      self.artist.name
    end
  end
  
  def self.all 
    @@all 
  end
  
end