class Cult

    attr_accessor :location, :slogan, :followers
    attr_reader :name, :founding_year

    @@all = []
    
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        @@all << self
    end

    def recruit_follower(follower)
        @followers << follower
    end

    def cult_population
        @followers.count
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.select do |ele|
            ele.name == name
        end
    end

    def self.find_by_location(location)
        @@all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        @@all.select do |cult|
            cult.founding_year == year
        end
    end


end