# stuff about music here

require 'pry'

class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre, :genre_count, :artist_count

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_info = {}
    @@genres.each do |genre|
      genre_info[genre] ||= 0
      genre_info[genre] += 1
      # binding.pry
    end
    genre_info
  end

  def self.artist_count
    artist_info = {}
    @@artists.each do |artist|
      artist_info[artist] ||= 0
      artist_info[artist] += 1
    end
    artist_info
  end


end
