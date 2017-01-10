x = {:Bigcats => "Tigers", :domestic => "persian"}
x.delete(:Bigcats)
puts "x now has only domestic" , x

puts x.empty?
puts x.has_key?(:Bigcats)
puts x.has_key?(:domestic)
puts x.has_value?("persian")
