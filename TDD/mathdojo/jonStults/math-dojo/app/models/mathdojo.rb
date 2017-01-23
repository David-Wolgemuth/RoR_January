
class Mathdojo
 attr_accessor :result
 def initialize
  @result = 0
 end
 def add *numbers
  @result += numbers.flatten.inject(:+)
  return self
 end
 def subtract *numbers
  @result -= numbers.flatten.inject(:+)
  return self
 end
 def multiply_by_the_sum (numbers, array)
   @result += numbers * array.flatten.inject(:+)
   return self
 end
 def resets
   @result = 1
   return self
 end
end
