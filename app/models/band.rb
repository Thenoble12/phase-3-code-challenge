require "set"

class Band
    attr_accessor :name
    attr_reader :hometown
    
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end
    
    def venues        
        result = Concert.all.select { |concert| concert.band == self }
        final = result.map do |concert|
            concert.venue.title            
        end             
        final = final.to_set.to_a
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end   

    def all_introductions
        Concert.all.select { |concert| concert.band == self }.map { |concert| concert.introduction }       
    end
end