require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("name1", "location", "founding_year", "slogan")
cult2 = Cult.new("name2", "location", "founding_year", "slogan")
cult3 = Cult.new("name3", "location", "founding_year", "slogan")
cult4 = Cult.new("name3", "location", "founding_year", "slogan")
follower1 = Follower.new("John",22,"Happy to be here...")
follower2= Follower.new("Freddy",74,"Not happy to be here...")

bloodoath1 = BloodOath.new("1992-06-06", cult1, follower1)
bloodoath2 = BloodOath.new("1992-07-06", cult3, follower1)

##tests##

follower2.join_cult(cult1)

check = cult1.followers

check2 = Follower.of_a_certain_age(50)



#cults = follower1.cults
# john = Cult.find_by_name("name1")
# puts john
# newcult = Cult.find_by_location("location")
# newcult = Cult.find_by_founding_year("founding_year")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
