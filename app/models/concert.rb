class Concert

attr_reader :band, :venue

    @@all = []
    
    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end
    
    def self.all
        @@all
    end    

    def hometown_show?
        @band.hometown == @venue.city
    end

    def introduction
        "Hello #{Venue.venue.city}!!!!!, we are #{Band.band.name}"
    end

end