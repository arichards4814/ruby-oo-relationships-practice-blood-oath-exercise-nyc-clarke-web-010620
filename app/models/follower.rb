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
    my_cults = Cult.all.select {|cult| cult.followers == self}
    my_slogans = my_cults.map{|cults| cults.slogan}
    binding.pry
    return my_slogans
end 

end