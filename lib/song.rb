require 'pry'
class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count+=1
        @@genres << genre
        @@artists << artist 

    end

    def self.count
        @@count
    end

    def self.check(class_list)
        final_list = []
        class_list.each do |class_item|
            if !final_list.any?(class_item)
                final_list << class_item
            end
        end
        final_list
    end
    def self.count
        @@count
    end

    def self.count_things(class_list)
        class_list.tally
    end

    def self.genres
        check(@@genres)

    end

    def self.genre_count
        count_things(@@genres)

    end

    def self.artists
        check(@@artists)
    end

    def self.artist_count
        count_things(@@artists)
    end

   
end

# lights = Song.new("all of the lights","kanye", "rap")
# larry = Song.new("Im made of wax larry","ADTR", "pop punk")
# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# larry = Song.new("Florida pan handle","ADTR", "pop punk")
# Song.genres
# Song.artist
# Song.genre_count
binding.pry