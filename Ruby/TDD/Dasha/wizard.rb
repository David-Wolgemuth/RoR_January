require_relative 'human'
class Wizard < Human
  attr_accessor :health , :heal

  def initialize
		@health = 50
		@intellegence = 50
end
  def heal
    @health += 10
end
  def fireball object
    object.health -=20
  end
end
