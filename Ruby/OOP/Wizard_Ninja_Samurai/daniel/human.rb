class Human
  attr_accessor :strength, :intelligence, :stealth, :health

  def initialize
    @strength = 3
    @stealth = 3
    @intelligence = 3
    @health = 100
  end

  def display_health
    puts @health
  end

  def attack target
    if target.class.ancestors.include?(Human)
      target.health -= 10
      true
    else
      @health -= 7
      false
    end
  end
end

class Dog
end

daniel = Human.new
jon = Human.new
joey = Dog.new

daniel.attack(jon)
daniel.attack(joey)

jon.display_health
daniel.display_health
