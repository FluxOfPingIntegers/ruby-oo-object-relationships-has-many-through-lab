class Genre
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

  def songs
    Song.all.select {|i| i.genre == self}
  end

  def artists
    self.songs.map {|i| i.artist}
  end
end