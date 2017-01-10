class Mammal
  def initialize
    @health = 150
  end
  def display_health
    puts "#{@health}"
  end
end

jack = Mammal.new

puts jack.display_health
