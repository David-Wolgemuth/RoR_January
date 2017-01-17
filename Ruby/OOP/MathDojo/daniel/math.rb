class Mathy
  attr_accessor :total

  def initialize
    @total = 0
  end

  def add(*nums)
    if nums.kind_of?(Array)
      @total += nums.flatten.reduce(:+)
    else
      @total += nums
    end
    self
  end

  def minus(*nums)
    if nums.kind_of?(Array)
      @total = nums.flatten.reduce(:-)
    else
      @total -= nums
    end
    self
  end
end

a =  Mathy.new
puts a.add(2).add(2, 5).minus(3, 2).total
b = Mathy.new
puts b.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).minus([2,3], [1.1, 2.3]).total
