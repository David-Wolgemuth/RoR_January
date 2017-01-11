require_relative 'Human'
class Ninja < Human
  attr_accessor :stealth

  def initialize
    @stealth = 175
  end

  def steal target
    if target.class.ancestors.include?(Human)
      target.health -= 10
      @health += 10
      self
    end
  end
  def get_away
    @health -= 15
    self
  end
end
