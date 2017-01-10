arr1 = ["abc", "xyz" ,"qrs", "mno"]
arr2 = [9,11,16,18,10]
arr3 = %w{ l m n o p }
arr4 = %w{ earth sun moon }

x = arr1.at(0)
puts x

y = arr2.fetch(1)
puts y

z = arr1.delete("xyz")
puts arr1

a = arr1.reverse
puts a

puts arr1.length
puts arr1.sort
n = arr2.slice!(4)
puts arr2

puts arr2.shuffle

n = arr1.join('-')
puts n

arr3.insert(1,55)
puts arr3

q = arr4.values_at(1,2).join(' and ')
puts q
