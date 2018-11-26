require "pry"
class Cult
  attr_reader :name, :founding_year, :slogan
  attr_accessor :location
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(cult_name)
    self.all.find do |cult|
      cult.name == cult_name
    end
  end

  def self.find_by_location(location)
    self.all.find do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    self.all.select do |cult|
      cult.founding_year == year
    end
  end

  def self.least_popular
    lowest_count = Cult.all.first.followers.length
    lowest_cult = Cult.all.first
    Cult.all.each do |cult|
      if cult.followers.length < lowest_count
        lowest_count = cult.followers.length
        lowest_cult = cult
      end
    end
    lowest_cult
  end

  def self.most_common_location
    # count = 0
    # location = ""
    #use a hash to store key, value (location, count) pairs

  end

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def bloodoaths
    Bloodoath.all.select do |bloodoath|
      bloodoath.cult == self
    end
  end

  def followers
    bloodoaths.map do |bloodoath|
      bloodoath.follower
    end
  end

  def recruit_follower(follower)
    #takes a follower instance,
    #add the follower to the cults (self) list of followers
    # =>              cult, follower
    Bloodoath.new(self, follower)
  end

  def cult_population
    self.followers.length
  end

  def average_age
# returns a `Float` that is the average age of this cult's followers
    total = 0.0
    count = 0
      self.followers.each do |follower|
        total += follower.age
        count += 1
      end
    total / count
  end

  def my_followers_mottos
    self.followers.each do |follower|
      puts follower.life_motto
    end
  end



end # end of Cult class
