class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count  += 1
  end 
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.count 
    @@count
  end
  
  def self.genre_count
    @@genres.inject(Hash.new(0)) do |total, i| #stackoverflow sum value of array in hash
      total[i] += 1 ;total
    end
  end 
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) do |total, i| 
      total[i] += 1 ;total
    end
  end
end