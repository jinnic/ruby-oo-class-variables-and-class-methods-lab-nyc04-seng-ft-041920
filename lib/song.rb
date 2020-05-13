require('pry')

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@artists << artist
        @@genres << genre
    end
    
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        #binding.pry
        @@genres.uniq
    end

    #returns a hash of genres and the number of songs 
    #that have those genres
    #{"pop" => 1, "rap" => 2}
    def self.genre_count
        count = {}
        @@genres.each do |genre|
            if count[genre] 
                count[genre] += 1
            else
                count[genre] = 1
            end
        end
        count
    end

    #returns a hash of artists 
    #and the number of songs that have those artists
    #{"Brittany Spears" => 1, "Jay-Z" => 2})
    def self.artist_count
        count = {}
        @@artists.each do |artist|
            if count[artist] 
                count[artist] += 1
            else
                count[artist] = 1
            end
        end
        count

    end
end


# Song.new("Lucifer", "Jay-Z", "rap" )
# Song.new("99 Problems", "Jay-Z", "rap")
# Song.new("hit me baby one more time", "Brittany Spears", "pop")
# Song.genres