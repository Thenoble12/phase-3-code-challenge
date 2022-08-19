class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select { |concert| concert.venue == self }
    end
    
    def bands
        Band.all.select { |band| band.venues.include?(self.title) }
    end

    def concert_on_date(date)            
        result = Concert.all.select { |concert| concert.date == date }
        result[0]
    end

    def most_frequent_band
        bands = self.bands
        concerts = self.concerts
        max = 0
        result = ""
        i = 0
        
        while i < bands.length
            current = 0           
            concerts.each { |concert| concert.band == bands[i] ? current += 1 : nil }                               

            if (max <  current)  
                max = current               
                result = bands[i]   
            end             
             i += 1
        end
        result.name
    end   
end