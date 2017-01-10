a = ["cat","mat","bat"]
b = ('a'..'e')
c = (1..10)
puts a.member?("mat")
puts b.member?("d")

puts a.include?("rat")
puts c.include?(4)

puts b.to_a.last
puts c.to_a.last
puts c.min

puts "The maximum in b is "  + b.max
puts "The minimum in c is " + c.min.to_s
#puts "The minimum in c is 1"  + c.to_s.min
