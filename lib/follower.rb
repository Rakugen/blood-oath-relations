require "pry"
class Follower
  attr_reader :name
  attr_accessor :age, :life_motto
  @@all = []

  def self.all
    @@all
  end

# Returns all followers that are of a certain age
  def self.of_a_certain_age(age)
    self.all.select do |follower|
      follower.age >= age
    end
  end

# Creating a new follower instance
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

# Grabs all bloodoaths that this follower belongs to
  def bloodoaths
    Bloodoath.all.select do |bloodoath|
      bloodoath.follower == self
    end
  end

# Returns all cults that this follower belong to
  def cults
    bloodoaths.select do |bloodoath|
      bloodoath.cult
    end
  end

# Creates the follower to cult relationship through a new bloodoath
  def join_cult(cult)
    Bloodoath.new(cult, self)
  end

end # end of Follower class
