class MathDojo
  attr_accessor :sum
  def initialize
    @sum = 0
  end

  def add(*number)
    if number.class == Array
      @sum += number.flatten.reduce(:+)
    else
      @sum += number
    end
    return self
  end

  def subtract(*number)
    if number.class == Array
      @sum -= number.flatten.reduce(:+)
    else
      @sum -= number
    end
    return self
  end

  def result
    return @sum
  end
end

m = MathDojo.new
puts m.add(2).add(2,5).subtract(3,2).result
puts m.add(1).add([3,5,7,8], [2,4.3,1.25]).subtract([2,3], [1.1, 2.3]).result
