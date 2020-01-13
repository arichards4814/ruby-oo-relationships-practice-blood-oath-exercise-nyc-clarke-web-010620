class Cult

    attr_accessor :location, :slogan, :followers
    attr_reader :name, :founding_year, :minimum_age 

    @@all = []
    
    def initialize(name, location, founding_year, slogan, minimum_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @followers = []
        @@all << self
    end

    def recruit_follower(follower)
        if follower.age < minimum_age
           "Sorry, you are too young to join!"
        else 
           @followers << follower
        end 
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

    def average_age
        ages = self.followers.map do |follower|
            follower.age
        end
        ages2 = ages.inject {|sum, ele| sum + ele}.to_f / ages.size

        ages2
    end

    def my_followers_mottos
        mottos = self.followers.map do |follower|
            follower.life_motto
        end
        mottos
    end

    def self.least_popular
        lowest_cult = nil
        @@all.each do |cult|
            if !lowest_cult
                lowest_cult = cult
            elsif cult.followers.count < lowest_cult.followers.count
                lowest_cult = cult
            end
        end
        lowest_cult
    end

    def self.most_common_location
        locations = @@all.map {|cult| cult.location}
        most_common = locations.max_by { |cult| locations.count(cult) }
    end 
    
end