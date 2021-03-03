class Song
attr_reader :name, :all
attr_accessor :artist, :genre


@@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def all
    @@all
  end
end
