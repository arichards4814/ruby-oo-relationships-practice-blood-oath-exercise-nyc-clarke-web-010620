class Follower

    attr_accessor :life_motto, :followers_hash
    attr_reader :name, :age

    @@all = []

def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
end

def self.all
    @@all
end

def cults
    arr = BloodOath.all.select do |bloodoath|
        bloodoath.follower = self
    end
    our_cults = arr.map do |ele|
        ele.cult
    end
    our_cults.uniq
end

def join_cult(cult)
    if cult.minimum_age > self.age 
        "Sorry, you are too young to join!"
    else 
        cult.recruit_follower(self)
    end 
end

def self.of_a_certain_age(age)
    Follower.all.select do |ele|
        ele.age > age
    end
end

def my_cult_slogans
    
my_cults = self.cults 

slogans = my_cults.map do |ele|
    ele.slogan
end


slogans   
end 

def self.most_active
    followers_hash = {}

    Cult.all.each do |cult|
        cult.followers.each do |follower|
            if !followers_hash[follower.name]
                followers_hash[follower.name] =  1
            else
                followers_hash[follower.name] += 1
            end
        end
    end

    best_follower = followers_hash.max_by {|k,v| v}
    best_follower_name = best_follower[0]
    @@all.find{|follower| follower.name == best_follower_name}
end 

    def self.top_ten
        followers_hash = {}

    Cult.all.each do |cult|
        cult.followers.each do |follower|
            # binding.pry
            if !followers_hash[follower.name]
                followers_hash[follower.name] =  1
                
            else
                followers_hash[follower.name] += 1
            end
        end
    end

        top_ten_followers = []
        count = 0 
        while count < 10 
            best_follower = followers_hash.max_by {|k,v| v}
            best_follower_name = best_follower[0]
            best_follower_instance = @@all.find{|follower| follower.name == best_follower_name}
            top_ten_followers << best_follower_instance
            followers_hash.delete(best_follower_name)
            count += 1 
        end 

        top_ten_followers
        

    end

    def fellow_cult_members
        cult_members = []
        cults.each do |cult| 
            cult.followers.each do |follower|
                cult_members << follower
            end 
        end 
        cult_members.uniq
    end
end