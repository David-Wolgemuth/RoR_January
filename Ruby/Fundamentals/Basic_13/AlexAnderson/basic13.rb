#Print 1-255
# for i in 1..255
#     puts i
#   end

#Print odd numbers 1-255
# for i in 1..255
#     puts i   if i % 2 != 0
# end

#print Sum
# for i in 1..255
#   puts "New number: #{i}"
#   puts (1..255).inject { |sum, n| sum + n}
# end

#Iterating through an array
# x = [1,3,5,7,9,13]
# puts x.each {|a|}
#
# #Find Max
# def max(array) puts array.max end
#
# max([45,2000,311])

#Get Average
# def average(array)
#   puts array.inject(0.0) {|sum, n| sum + n } /array.size
# end
# average([1,2,3])

#Array with Odd numbers
# def aOdd()
# print (1..255).select(&:odd?)
# end
# aOdd()

#Greater Than y
# def greaterThanY (array,y)
#   counter = 0
#   array.each { |array| counter+=1 if array > y}
#   puts counter
# end
#
# greaterThanY([1,2,45,2,65],3)

#Square the values
# def square(array)
#    print array.collect { |x| x * x }
# end
# square([1, 5, 10, -2])

#Eliminate Negative Numbers
def noNegatives(array)
 array.each { |x| if x > 0 then puts x else  puts 0 end }
end
noNegatives([1, 5, 10, -2])

#Max, Min, and Average
def maxMinAvg(array)
  max = array[0]
  min = array[0]
  array.each { |x| max=x if x>max }
  array.each { |x| min=x if x<min }
  puts "Max = #{max}"
  puts "Min = #{min}"
  puts "Average = #{array.reduce(:+) / array.size.to_f} "
end
maxMinAvg([1,5,10,-2])

#Shifting the values in the array
def shift(array)
counter = 0
array.each { array[counter] = array[counter+=1] }
array[array.size-1] = 0
puts array
end
shift([1, 5, 10, 7, -2])
# Number to string
def numToString(array)
array.each { |array| if array>0 then puts array else puts 'Dojo' end }
end

numToString([-1, -3, 2])
