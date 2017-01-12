=begin
Use each method in an example:
.at or .fetch
.delete
.reverse
.length
.sort
.slice
.shuffle
.join
.insert
.values_at()
=end

a = ['mike', 'vanessa', 'david', 'fiaz']
b = [0, 2, 4, 6, 8, 70, 10, 12]

puts a.at(-1)
a.delete_at(0)
puts a

a = ['mike', 'vanessa', 'david', 'fiaz']

puts b.reverse
puts b.length

c = b.sort
puts c

a.slice(2,3)
puts a

a = ['mike', 'vanessa', 'david', 'fiaz']

puts a.shuffle.join("-")
puts a.shuffle.join("{}")

a = ['mike', 'vanessa', 'david', 'fiaz']
men = a.values_at(0, 2, 3)

puts men
