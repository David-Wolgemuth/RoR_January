require_relative 'Human'
class Samurai
  attr_accessor :health
  @@no_of_samurai = 0

  def initialize
    @health = 200
    @@no_of_samurai += 1

  end

  def dealth_blow target
    if target.class.ancestors.include?(Human)
      target.health = 0
    end

  def meditate
    @health = 200
    self
  end
  def how_many
    return @@no_of_samurai
  end
end
