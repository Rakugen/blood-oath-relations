require_relative '../config/environment.rb'

require_relative '../lib/cult.rb'
require_relative '../lib/follower.rb'
require_relative '../lib/bloodoath.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
              #(name, age, life_motto)
f1 = Follower.new("Mike",33,"I love Cats")
f2 = Follower.new("Dick",36,"I wrestling")
f3 = Follower.new("Chris",28,"I love coding")
          #(name, location, founding_year, slogan)
c1 = Cult.new("Trump","White House", 2016, "You're fired!!!")
c2 = Cult.new("Pokemans","Veridien", 1995, "Gotta catch em all!!")
c3 = Cult.new("Shiba","Simon's House", 2018, "Bork")
c4 = Cult.new("Gamers","Simon's House", 2018, "...")

c1.recruit_follower(f1)
c1.recruit_follower(f2)
c2.recruit_follower(f1)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
