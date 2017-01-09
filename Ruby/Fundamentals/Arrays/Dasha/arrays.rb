a = ['Matz', 'Dave', 'Dojo', 'Code']
b = [5, 7, 8, 6, 9, 11, 33]
c = ['Code', 5]
d = %w{a b c d e}

# .at or .fetch
puts b.at(0)
puts b.at(-1)

puts b.fetch (3)
puts b.fetch(-1)
b.fetch(100) { |i| puts "#{i} is out of bounds"}

# .delete
b.delete ('Dojo')
puts a

# .reverse
puts a.reverse!

# .length
puts "Length of a is #{a.length}"

# .sort
puts b.sort!

# .slice
puts b.slice (2)

# .shuffle
puts a.shuffle!

# .join
puts ['a','c','l', 'k'].join
puts ['a', 'c', 'm'].join ('--')

# .insert
print d.insert(2,99)


# values_at() -> returns an array with values specified in the param
puts a.values_at(1,3)

%w{cat dog bear}; puts a.values_at(1,2).join(' and ')
