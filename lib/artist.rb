require 'pry'
class Artist
attr_reader :name

@@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|i| i.artist == self}
  end

  def genres
    self.songs.map do |i|
      i.genre
    end
  end

end