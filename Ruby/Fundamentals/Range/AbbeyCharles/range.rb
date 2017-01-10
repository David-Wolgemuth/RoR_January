x = (1..5)

puts "Class name: #{x.class}"

puts x.member?(3)

puts x.include?(2)

puts "The last number of the range is "+x.last.to_s

puts "The maximum number of the range is "+x.max.to_s

puts "The minimum number in the range is "+x.min.to_s
