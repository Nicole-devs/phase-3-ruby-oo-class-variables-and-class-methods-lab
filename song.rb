class Song
    attr_accessor :name, :artist, :genre 

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @@name = name
        @@artist = artist
        @@genre = genre
        @@count = @@count + 1
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
        genre_histogram = {}
        @@genres.each do |genre|
            if genre_histogram [genre]
                genre_histogram[genre] += 1
            else
                genre_histogram[genre] = 1
            end
        end
        genre_histogram
        end
end