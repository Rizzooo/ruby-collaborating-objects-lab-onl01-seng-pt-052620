class Artist 
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(artist)
    found = self.all.find {|creator| creator.name == artist}
    if found
      found
    else
      new_guy = self.new(artist)
      new_guy.save
      new_guy
    end
  end
  
  def songs
    @songs 
  end
  
  def print_songs
    @songs.each do |song| 
      puts song.name
    end
  end
   
  def self.all 
    @@all 
  end
end