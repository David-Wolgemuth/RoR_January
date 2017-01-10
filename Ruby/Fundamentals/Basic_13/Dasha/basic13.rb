#print 1-255
(1..255).each { |i| puts i}

#print odd between 1-255
(1..255).step(2) { |i| puts i}

#print sum
sum = 0
(0..255).each do |i|
  puts "New number: #{i} // Sum: #{sum}"
  sum += i
end

#iterating through an array
x=[1,3,5,7,9,13]

for number in x
  puts "#{number}"
end

#find max
x=[-3,-5,-7,8]
puts x.max

#find get average
arr=[2,10,3]
avg = arr.reduce(:+).to_f / arr.length
puts "#{avg}"

#array with odd numbers
 y=(1..255).select(&:odd?)
 puts "#{y}"

#greater than y
arr=[1,3,5,7]
y=3
new_arr=[]
arr.each do |item|
  if item > y
    new_arr.push(item)
  end
end
puts new_arr.length

#square the values
arr=[1,5,10,-2]
arr = arr.map{ |item| item * item }
puts arr.to_s

#Eliminate Negative Numbers
arr=[1,5,10,-2, -90]
temp=[]
arr.each do |item|
  if item < 0
    temp.push(0)
  else
    temp.push(item)
  end
end
  arr=temp
  puts arr.to_s

#Max, Min, and Average
arr=[1,5,10, -2]
puts arr.max
puts arr.min
avg = arr.reduce(:+).to_f / arr.length
puts "#{avg}"

#Shifting the values in the array
arr=[1,5,10,7,-2]
temp=[]
arr.each_with_index do |val, idx|
  if arr[idx + 1] == nil
    temp.push(0)
  else
    temp.push(arr[idx + 1]);
  end
end
arr = temp
puts arr.to_s

#Number to string
arr=[-1,-3,2]
temp=[]
arr.each do |val|
  if val < 0
    temp.push("Dojo")
  else
    temp.push(val)
  end
end
arr = temp
puts arr.to_s
