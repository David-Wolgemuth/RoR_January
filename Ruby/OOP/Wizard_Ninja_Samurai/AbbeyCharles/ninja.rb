require_relative "human"
class Ninja < Human
  def initialize
    @stealth = 175
  end

  def steal
    if obj.class.ancestors.include?(Human, Wizard, Samurai)
      @health -= 10
      obj.class.ancestors.include?(Ninja)
      @health += 10
      true
    else
      false
    end
  end

  def get_away
    @health -= 15
  end
end
