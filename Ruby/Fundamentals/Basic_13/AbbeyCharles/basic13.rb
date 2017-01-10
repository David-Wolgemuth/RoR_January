# Print 1-255
# 1.upto(255) {|i| print i, " "}

# Print odd #s b/w 1 and 255
# puts (1..255).reject {|i| i%2 == 0}

# Print Sum
# i = 0
# sum = 0
# while i < 256 do
#   sum += i
#   puts "The looped number is #{i}"
#   puts "The sum is #{sum}"
#   i += 1
# end

# Iterating through an array
# x = [1,3,5,7,9,13]
# x.each {|number| print number, "--"}

# Find the max
# x = [1,3,5,7,9,13]
# puts x.max

# Find the average
# x = [1,3,5,7,9,13]
# sum = x.reduce(:+)
# puts sum/x.length

# Array with odd numbers
# y = []
# print y.push((1..255).reject {|i| i%2 ==0})

# Greater than Y
# x = [1,3,5,7,9,13]
# y = 6
# sum = 0
# x.each do |item|
#   if item > y
#     sum += 1
#   end
# end
# puts "The number of objects greater than Y is: #{sum}"

# Square the values
# x = [1,3,5,7,9,13]
# puts x.collect {|y| y*y}

# Eliminate negative numbers
# x = [1,5,10,-2]
# x.each_with_index do |value, index|
#   if value < 0
#     x.slice!(index)
#   end
# end
# puts "This is the new array #{x}"
# # This is a one-line solution, good for sorting multiple things
# x.reject {|item| item < 0}
# puts "The 'reject' array: #{x}"

# Max, min, and average
# x = [1,3,5,7,9,13]
# puts "This is the min: "+x.min.to_s
# puts "This is the max: "+x.max.to_s
# sum = x.reduce(:+)
# puts "This is the average: "+(sum/x.length).to_s

# Shifting the values in an array
# x = [1,3,5,7,9,13]
# x.shift(1)
# puts x

# Number to string
x = [1,-3,5,-7,9,13]
x.map! {|x| x<0 ? "Dojo":x}
puts x
