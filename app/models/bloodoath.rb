class BloodOath

    attr_accessor :initiation_date, :cult, :follower

    @@all = []

    def initialize(initiation_date, cult, follower)
        @cult = cult
        @follower = follower
        
        @initiation_date = initiation_date
        @@all << self

        cult.recruit_follower(follower)

        return initiation_date
    end

    def self.all 
        @@all
    end



end