class Song 
    attr_accessor :name, :artist, :genre 

    @@count = 0
    @@names = []
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre 
        @@count += 1 
        @@names << @name 
        @@artists << @artist
        @@genres << @genre 
    end 

    def self.count 
        @@count 
    end 

    def self.genres 
        genres_array = @@genres.uniq
        genres_array  
    end 

    def self.artists 
        artists_array = @@artists.uniq 
        artists_array
    end 

    def self.genre_count
        hash = {}
        @@genres.each do |index|
            if !hash[index]
                hash[index] = 1 
            else 
                hash[index] += 1
            end 
        end 
        hash 
    end 

    def self.artist_count 
        hash = {}
        @@artists.each do |index|
            if !hash[index]
                hash[index] = 1 
            else 
                hash[index] += 1
            end 
        end 
        hash 
    end 
end 