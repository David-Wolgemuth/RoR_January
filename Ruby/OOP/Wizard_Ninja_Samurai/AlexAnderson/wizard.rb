require_relative 'Human'
class Wizard < Human
  attr_accessor :intelligence, :health

  def initialize
    @intelligence = 25
    @health = 50
  end

  def health
    if @health < 50
    @health += 10
    else
      puts "Already at max health"
    end
  end
  def fireball (target)
    if target.class.ancestors.include?(Human)
      target.health -= 20
      true
    else
      false
    end
  end
end
