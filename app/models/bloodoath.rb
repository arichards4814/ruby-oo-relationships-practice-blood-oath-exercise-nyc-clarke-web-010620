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

    def self.first_oath
        array_of_dates_sorted = @@all.map{|blood_oath| blood_oath.initiation_date.split("-")}.sort
        first_date_year = array_of_dates_sorted[0][0]
        blood_oath = @@all.find{|bloodoath| bloodoath.initiation_date.split("-")[0] == first_date_year}
        blood_oath.follower
    end 



end