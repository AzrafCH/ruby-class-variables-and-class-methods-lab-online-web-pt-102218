class Song 
  
  attr_accessor :name, :artists, :genre 
  
  @@count = 0
  
  def initialize(name,artists,genre)
    @@count += 1 
    @name = name 
    @artists = artists 
    @genre = genre 
    @@genres = [] 
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres
    
  end 
  
end 