class MathDojo
  attr_accessor :result
  def initialize
    @result = 0
  end
    def add *nums
      @result += nums.flatten.reduce {|sum, n| sum + n }
      # @sum = nums.reduce :+
      self
    end
    def subtract *nums
      @result  -= nums.flatten.reduce { |sum, n| sum + n}
      # @result -= nums.reduce :+
      self
    end
end



x = MathDojo.new
puts x.add(2).add(2,5).subtract(3,2).result

y = MathDojo.new
puts y.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
