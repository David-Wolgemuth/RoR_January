=begin
.member?(val) => true or false
.include?(value) => true or false
.last => returns the last object in range
.max => returns the maximum value in range
.min => returns the minimum value in range
=end

a = (-10..10)
b = ("a".."z")

puts a.member?(3)
puts a.include?(13)
puts b.last
puts b.max
puts b.min


=begin
(1..10) === 5       -> true
(1..10) === 15      -> false
(1..10) === 3.14159 -> true
('a'..'j') === 'c'  -> true
('a'..'j') === 'z'  -> false
=end
