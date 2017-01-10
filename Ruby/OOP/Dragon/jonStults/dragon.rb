require_relative 'mammal'

# class Dog < Mammal
#   def pet
#     @health += 5
#     self
#   end
#   def walk
#     @health -= 1
#     self
#   end
#   def run
#     @health -= 10
#     self
#   end
# end
#
# bear = Dog.new
#
# puts bear.walk.walk.walk.run.run.pet.display_health

class Dragon < Mammal
  def initialize
    @health = 170
  end
  def fly
    @health -= 10
    self
  end
  def attack_town
    @health -= 50
    self
  end
  def eat_humans
    @health += 20
    self
  end
end

bill = Dragon.new

puts bill.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
