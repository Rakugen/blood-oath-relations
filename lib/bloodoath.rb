require "pry"
class Bloodoath
  attr_reader :cult, :follower, :initiation_date

  @@all = []

  def self.all
    @@all
  end

# Creating a new bloodoath instance
  def initialize(cult, follower)
    @cult = cult
    @follower = follower

    #calculate time into right format _YYYY-MM-DD_
    # time_str = ""
    # time_str = Time.now.to_s
    time_str = Time.now.to_s.split(" ")[0]


    @initiation_date = "_#{time_str}_"

    @@all << self
  end

end # end of Bloodoath class
