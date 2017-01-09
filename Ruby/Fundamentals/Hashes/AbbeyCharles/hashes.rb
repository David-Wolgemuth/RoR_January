y = {:first_name => "Abbey", :last_name => "Charles", :motorcycle => "Kawasaki KLX250"}
puts "Y is ", y

puts "Deleting :last_name"
y.delete :last_name
puts "Y is now: ", y

puts y.empty?

puts y.has_key?(:motorcycle)

puts y.has_value?("Abbey")
