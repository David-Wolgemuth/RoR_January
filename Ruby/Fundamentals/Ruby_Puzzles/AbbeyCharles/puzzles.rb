# Print sums; return array with values > 10
x = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
i = 0
sum = 0
while i < x.length do
  sum += i
  i += 1
end
puts "The sum is: #{sum}"
print x.reject {|i| i<10}
puts "---"

# Shuffle; return array with names > 5 char
names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christoher"]
puts names.shuffle
print names.reject {|i| i.length<5}
puts "---"


# Shuffle; display first and last; if first is a vowel, display message
# alpha = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
miniAlpha = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s"]
# Will only let me have 19 objects?
puts "---"

# Generate an array with 10 random #s b/w 55 and 100
random = []
i = 0
while i < 10 do
  random.push((55..100).to_a.sample)
  i += 1
end
puts "This is a random array: #{random}"
puts "---"

# Sort the above in ascending order and display; find min and max
print random.sort! {|x,y| x <=> y}
puts random.max
puts random.min
puts "---"

# Create a random string that is 5 characters long
string = ""
string = ""; 5.times{string  << (65 + rand(25)).chr}
puts "This is the random string: '#{string}'."
puts "---"

# Create an array of 10 random strings of 5 letter
strArr = []
i = 0
while i < 10 do
  strArr.push(string)
  string = ""; 5.times{string  << (65 + rand(25)).chr}
  i += 1
end
puts "Here's the array of strings: #{strArr}"
