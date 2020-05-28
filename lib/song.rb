require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new 
    @@all << song
    song 
  end
  
  def self.new_by_name(string_name)
    song = self.new 
    song.name = string_name
    song 
  end
    
  def self.create_by_name(string_name)
    song = self.new 
    song.name = string_name
    @@all << song
    song
  end
  
  def self.find_by_name(string_name)
    @@all.find{|song|  song.name == string_name}
  end
  
  def self.find_or_create_by_name(string_name)
    if self.find_by_name(string_name) 
      return self.find_by_name(string_name)
    else
      self.create_by_name(string_name)
    end
  end
  
  def self.alphabetical
    @@all.sort_by { |name| name.name }
  end
  
  1] pry(Song)> song_array
=> [["Thundercat ", " For Love I Come", "mp3"]]
    
    
    
    
    
    
    
    
    
end
