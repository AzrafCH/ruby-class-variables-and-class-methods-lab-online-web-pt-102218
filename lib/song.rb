class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  
  def initialize(name,artists,genre)
    @@count += 1 
    @name = name 
    @artist = artist 
    @genre = genre 
    @@genres = [] 
    @@genres << genre
    @@artists = [] 
    @@artists << artist
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres
    @@genres.uniq 
  end 
  
end 