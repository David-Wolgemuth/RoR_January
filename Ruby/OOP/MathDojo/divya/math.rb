Class MathDojo

  def add(*nums)
    nums.inject(&:+)
  end
  def math
    puts 
end

math = MathDojo.new(1,2,3)
math.add(1,2,3)
