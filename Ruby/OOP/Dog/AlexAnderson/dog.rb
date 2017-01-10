require_relative 'mammal'
class Dog < Mammal
  def pet
    @health += 5
    self
  end
  def walk
    @health -= 1
    self
  end
  def run
    @health -= 10
    self
  end
end
doug = Dog.new
# chloe.jerk.speak.breathe.who_am_i
puts doug.pet.walk.walk.walk.run.run.pet.display_health
