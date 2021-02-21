require 'pry'

class Genre

    attr_accessor :name, :title

    @@all = []

    def initialize(name)
        #binding.pry
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end 
end
