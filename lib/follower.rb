require "pry"
class Follower
  attr_reader :name
  attr_accessor :age, :life_motto
  @@all = []

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    self.all.select do |follower|
      follower.age >= age
    end
  end

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def bloodoaths
    Bloodoath.all.select do |bloodoath|
      bloodoath.follower == self
    end
  end

  def cults
    bloodoaths.select do |bloodoath|
      bloodoath.cult
    end
  end

  def join_cult(cult)
    Bloodoath.new(cult, self)
  end

end # end of Follower class
