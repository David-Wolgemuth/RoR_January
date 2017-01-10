a = ["Kawasaki", "Harley Davidson", "Suzuki", "Ducati", "Moto Guzzi"]
b = [3, 7, 10, 4, 13, 5, 17, 2, 1, 11]

# .at or .fetch
puts a.at(3)
puts "-----"


# .delete
b.delete(4)
puts b
puts "-----"


# .reverse
a.reverse!
puts a
puts "-----"


# .length
puts a.length
puts b.length
puts "-----"

# .sort
puts b.sort
puts "-----"
puts b.sort {|zen,yes| yes <=> zen}
puts "-----"

# .slice
b.slice(3)
puts b
puts "-----"

# .shuffle
puts a.shuffle
puts b.shuffle
puts "-----"

# .join
puts a.join(", ")
puts b.join("-")
puts "-----"

# .insert
puts a.insert(2, "Confederate")
puts b.insert(4, 99)
puts "-----"

# values_at
puts a.values_at(0,4,2)
puts b.values_at(1,5,7)
