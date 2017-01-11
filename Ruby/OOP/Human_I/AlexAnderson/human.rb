class Human
  attr_accessor :strength, :intelligence, :stealth, :health
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack target
    
    if target.class.ancestors.include?(Human)
      target.health -= 10
      true
    else
      false
    end
  end
end

x = Human.new
y = Human.new

puts x.attack(y)
