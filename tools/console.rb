require_relative '../config/environment.rb'
require 'json'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

band_a = Band.new("Clear Soul Forces", "Detroit, Michigan")
venue_a = Venue.new("Honda Center", "City of Orange, California")
con_a = Concert.new("7/12/2022", band_a, venue_a)

band_b = Band.new("Foo Fighters", "New York, New York")
venue_b = Venue.new("Verizon Arena", "New York, New York")
con_b = Concert.new("6/2/2022", band_b, venue_b)

band_c = Band.new("Jay-Z", "Brooklyn, New York")
venue_c = Venue.new("HSBC Center", "Hong Kong, China")
con_c = Concert.new("8/6/2022", band_b, venue_c)

con_c = Concert.new("11/6/2022", band_b, venue_c)
con_d = Concert.new("12/1/2022", band_b, venue_c)
con_e = Concert.new("5/13/2022", band_c, venue_a)
con_f = Concert.new("2/3/2022", band_c, venue_a)
con_g = Concert.new("1/3/2022", band_c, venue_a)
con_h = Concert.new("1/11/2022", band_c, venue_b)
con_i = Concert.new("2/14/2022", band_c, venue_c)
con_t = Concert.new("4/5/2022", band_c, venue_a)



binding.pry  




0 #leave this here to ensure binding.pry isn't the last line
