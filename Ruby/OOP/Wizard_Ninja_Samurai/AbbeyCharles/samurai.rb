require_relative "human"

class Samurai < Human
  class << self
    attr_accessor :samurai_counter
  def initialize
    @health = 200
    self.class.samurai_counter += 1
  end

  def death_blow
    if obj.class.ancestors.include?(Human, Ninja, Wizard)
      @health == 0
      true
    else
      false
    end
  end

  def meditate
    @health == 200
  end

  def how_many
    puts "There are #{self.class.samurai_counter} samurais here!"
  end
end
