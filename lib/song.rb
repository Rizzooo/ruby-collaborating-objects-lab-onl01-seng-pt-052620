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
  
  def self.new_by_filename(file)
    song = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    new_tune = self.new(name)
    
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