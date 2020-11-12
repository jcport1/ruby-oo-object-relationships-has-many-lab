require 'pry'

class Song

    attr_accessor :artist, :name

    @@all = [] #create an empty array set to a class variable to keep track of ALL songs 

    def initialize(name)

        @name = name
        # @artist = artist 
        @@all << self #lab test wants us to keep track of all songs instances in the w/in the song class

    end 

    def self.all
        @@all
    end 

    def artist_name

        @artist == nil ? nil : self.artist.name 


    end

end 