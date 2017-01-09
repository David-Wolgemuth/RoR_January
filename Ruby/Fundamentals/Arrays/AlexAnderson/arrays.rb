a = [1,34,14,5,100]
print a
#.fetch function
 puts a.fetch(3)

#.delete function
a.delete(34)
puts a

#.reverse function
puts a.reverse

# .length function
puts a.length

#.sort function
puts a.sort

#.slice function
puts a.slice(2)

#.shuffle function
puts a.shuffle(random: Random.new(2))

#.join
puts a.join('#')

#.insert
puts a.insert(3, 1000)

#.values_at
print a.values_at(1..4)
print a.values_at(1,4)
