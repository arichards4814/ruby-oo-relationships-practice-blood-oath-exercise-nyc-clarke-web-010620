require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("name1", "location1", "founding_year", "slogannnnnn", 30)
# cult2 = Cult.new("name2", "location2", "founding_year", "HELLOOOO")
# cult3 = Cult.new("name3", "location1", "founding_year", "GOODBYE")
# cult4 = Cult.new("name3", "location", "founding_year", "slogan")

follower1 = Follower.new("John",22,"Happy to be here...")
follower2= Follower.new("Freddy",25,"Not happy to be here...")
# follower3= Follower.new("Steve",80,"Not happy to be here...")
# follower12 = Follower.new("sarah",22,"Happy to be here...")
# follower4= Follower.new("emily",74,"Not happy to be here...")
# follower5= Follower.new("mike",80,"Not happy to be here...")
# follower6 = Follower.new("josh",22,"Happy to be here...")
# follower7= Follower.new("hannah",74,"Not happy to be here...")
# follower8= Follower.new("carl",80,"Not happy to be here...")
# follower9 = Follower.new("bob",22,"Happy to be here...")
# follower10= Follower.new("sam",74,"Not happy to be here...")
# follower11= Follower.new("chris",80,"Not happy to be here...")

# bloodoath = BloodOath.new("2008-08-09", cult1, follower1)
# bloodoath1 = BloodOath.new("2001-08-09", cult1, follower2)
# bloodoath2 = BloodOath.new("2002-08-09", cult1, follower3)
# bloodoath3 = BloodOath.new("2003-08-09", cult1, follower4)
# bloodoath4 = BloodOath.new("2004-08-09", cult1, follower5)
# bloodoath5 = BloodOath.new("2005-08-09", cult1, follower6)
# bloodoath6 = BloodOath.new("2006-08-09", cult1, follower7)
# bloodoath7 = BloodOath.new("2007-08-09", cult1, follower8)
# bloodoath8 = BloodOath.new("2000-08-09", cult1, follower9)
# bloodoath9 = BloodOath.new("2009-08-09", cult1, follower10)
# bloodoath10 = BloodOath.new("2010-08-09", cult2, follower1)
# bloodoath11 = BloodOath.new("2011-08-09", cult2, follower2)
# bloodoath12 = BloodOath.new("2012-08-09", cult3, follower1)

# bloodoath1 = BloodOath.new(“1992-06-06”, cult1, follower1)
# bloodoath2 = BloodOath.new(“1993-06-06”, cult3, follower2)
# bloodoath3 = BloodOath.new(“1994-06-06”, cult1, follower3)
# bloodoath4 = BloodOath.new(“1995-06-06”, cult1, follower4)
# bloodoath5 = BloodOath.new(“1996-06-06”, cult3, follower5)
# bloodoath6 = BloodOath.new(“1997-06-06”, cult1, follower6)
# bloodoath7 = BloodOath.new(“1998-06-06”, cult1, follower7)
# bloodoath8 = BloodOath.new(“1999-06-06”, cult3, follower8)
# bloodoath9 = BloodOath.new(“2000-06-06”, cult1, follower9)
# bloodoath10= BloodOath.new(“2001-06-06”, cult1, follower10)
# bloodoath11 = BloodOath.new(“2002-06-06”, cult3, follower1)
# bloodoath12 = BloodOath.new(“2003-06-06”, cult1, follower1)
# bloodoath13 = BloodOath.new(“2004-06-06”, cult1, follower2)
# bloodoath14 = BloodOath.new(“2005-06-06”, cult3, follower1)
# bloodoath15 = BloodOath.new(“2006-06-06”, cult1, follower3)


##tests#5

# follower2.join_cult(cult1)
# check = cult1.followers
# check2 = Follower.of_a_certain_age(50)
# check3 = cult1.my_followers_mottos
# check4 = Cult.least_popular
# check5 = Cult.most_common_location 

# check6 = follower1.my_cult_slogans
# check7 = Follower.most_active
# check10 = Follower.top_ten
# check11 = BloodOath.first_oath
# check12 = follower1.fellow_cult_members

check13 = cult1.recruit_follower(follower1)
check14 = follower2.join_cult(cult1)

# cults = follower1.cults
# john = Cult.find_by_name("name1")
# puts john
# newcult = Cult.find_by_location("location")
# newcult = Cult.find_by_founding_year("founding_year")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
