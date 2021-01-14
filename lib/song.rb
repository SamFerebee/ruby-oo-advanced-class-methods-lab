require 'pry'

class Song
  
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create()
    new_song = Song.new
    self.all.push(new_song)
    new_song
  end

  def self.new_by_name(title)
    new_song = Song.new
    new_song.name =(title)
    self.all.push(new_song)
  end



end

binding.pry