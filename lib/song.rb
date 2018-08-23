class Song 
  #attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name 
    @artist = artist
    @genre = genre 
  end 
  
  def self.count 
    @@count
  end 
  
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unless unique_genres.include?(genre)
        unique_genres << genre
      end
    end 
    unique_genres
  end 
    
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unless unique_artists.include?(artist)
        unique_artists << artist
      end 
    end
    unique_artists
  end 
  
  def genre_count 
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre] == nil 
        genre_hash[genre] = 1 
      else
        genre_hash[genre] += 1 
      end 
    end
    genre_hash
  end 
    
end 