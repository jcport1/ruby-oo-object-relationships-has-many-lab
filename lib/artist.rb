# require 'pry'
class Artist

    attr_accessor :name

    # attr_reader :songs #allow us to call the method songs to return all songs for artist instance

    def initialize(name)

        @name = name
        @songs = [] #initialize with an empty song array, so later on, we can push an attribute into array
      
    end 

    def songs #define a method to return back all songs for the artist
     Song.all.select do |song| #since the Song class is keeping track of all the song instances
        #we will have to iterate through the Songs.all method and return back all of the instances
        #Beloing to the artist self instance
        song.artist == self
     end 
    end 

    def add_song(song)

        @songs << song #has many
        song.artist = self #recipricate the relationship inform song of the artist when adding song to artist
        #belongs to relationship

    end 

    def add_song_by_name(name)

        s = Song.new(name) #using a ruby primiative to create a new instance of the song
        self.add_song(s) #then will add the new instance of the song passed through as a variable to self
        s

    end 

    def self.song_count

        Song.all.size #we're in the artist class, and self is Artist, we want to call the Song class & method all
    #to get all the songs for that artist instance and then use the size method to tally thme up

    end 


end 