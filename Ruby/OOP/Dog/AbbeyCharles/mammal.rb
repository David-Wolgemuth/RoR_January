class Mammal
  attr_accessor :health
  def initialize
    @health = 150
    return self
  end

  def display_health
    return @health
  end
end

puts Mammal.new.display_health
