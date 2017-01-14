require_relative 'Human'
class Wizard < Human
  attr_accessor :intelligence, :health

  def initialize
    @intelligence = 25
    @health = 50
    self
  end

  def heal
    return @health += 10
  end

  def fireball (target)
    if target.class.ancestors.include?(Human)
      target.health -= 20
      return target.health
    else
      false
    end
  end

  def display_stats
    # return @health, @intelligence
    return "You have #{@health} health and #{@intelligence} intelligence"
  end
end

# puts wizard = Wizard.new.display_stats

 x = Wizard.new
 y = Wizard.new

 puts x.fireball y
