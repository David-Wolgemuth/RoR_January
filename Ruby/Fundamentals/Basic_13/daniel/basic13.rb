# #Print 1-255
(1..255).each { |i| print " #{i} " }

# #Print odd numbers between 1-255
(1..255).each { |i| unless i % 2 == 0 then print " #{i} " end}

# #Print Sum
sum=0
(1..255).each { |i| puts "Number: #{i}, Sum #{sum+=i}"}

#Iterating through an array
x = [1,3,5,7,9,13]
x.each {|i| puts i }

#Find Max
puts "The max is #{x.max}"

# Get Average
puts "The average is #{x.reduce(:+)/x.size}"

# #Array with Odd Numbers
puts "The array is #{t=(1..255).select(&:odd?)}"

# #Greater Than y
number = 3 # your value
count = 0
array = [1, 3, 5, 7]
puts "There are  #{array.each {|i| count+= 1 if number < i}; count} numbers higher than value"

# Square the values Given any array x, say [1, 5, 10, -2],
x.each { |num| puts num*num}

# Eliminate Negative Numbers
a = [1, 5, 10, -2]
a.each {|index| unless index < 0 then puts " #{index} " end}

# #Max, Min, and Average
x = [1,3,5,7,9,13]
puts "The Max is #{x.max}, the Min is #{x.min}, the average is #{x.reduce(:+)/x.size} "

# Shifting the values in the array
c= [1, 5, 10, 7, -2]
counter = 0
c.each { c[counter] = c[counter+=1] }
c[c.size-1] = 0
puts c

# Neg Number to string
q = [-1, -3, 2]
q.each {|u| if u>0 then puts u else puts 'Dojo' end}
