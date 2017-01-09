# delete(key) => deletes and returns a value associated with the key
h = {:first_name => "Coding", :last_name => "Dojo"}; h.delete(:last_name); puts h
# .empty? => returns true if hash contains no key-value pairs
{}.empty?
# .has_key?(key) => true or false
a={"z"=>100, "s" =>200}
puts a.has_key?("z")
puts a.has_key?("b")

# .has_value?(value) => true or false
c = {"a"=>40, "g" =>99}
puts c.has_value?(40)
puts c.has_value?(999)
