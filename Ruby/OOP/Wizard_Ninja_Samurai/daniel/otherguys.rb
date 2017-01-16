require_relative 'human'

class Wizard < Human
  attr_accessor :health, :intelligence

  def initialize
    @health = 50
    @intelligence = 25
  end

  def heal
    if @health <= 50
      @health += 10
      true
    else
      false
    end
  end

    def fireball target
      target.health -= 10
    end
end

class Ninja < Human
  attr_accessor :stealth

  def initialize
    @stealth = 175
  end

  def steal target
    target.health -= 5
    @health += 10
  end

  def get_away target
    @health -= 15
  end
end

class Samurai < Human
  attr_accessor :health, :count
  @@count = 0

  def initialize
    @health = 200
    @@count += 1
  end

  def death_blow target
    target.health = 0
  end

  def meditate
    @health = 200
  end

  def death_blow target
    target.health = 0
  end

  def how_many
      puts "#{@@count}"
  end
end

billy = Samurai.new
sam = Samurai.new
wiz = Wizard.new
nin = Ninja.new

nin.attack(billy)
billy.display_health
sam.death_blow(billy)
billy.display_health
billy.meditate
billy.display_health
billy.how_many
