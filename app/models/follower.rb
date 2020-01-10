class Follower

    attr_accessor :life_motto
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
    our_cults
end

def join_cult(cult)
    cult.recruit_follower(self)
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
            binding.pry
            if !followers_hash[follower.name]
                followers_hash[follower.name] =  1
                
            else
                followers_hash[follower.name] += 1
            end
        end
    end

    binding.pry
    

    # follower_hash.each do |k,v|
    #     if !most_active
    #         most_active = new_hash[k] => [v]
    #     elsif v > most_active[k]

    #     end
    # end



    #return follower
end 

end