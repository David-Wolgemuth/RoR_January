=begin
delete(key) => deletes and returns a value associated with the key
.empty? => returns true if hash contains no key-value pairs
.has_key?(key) => true or false
.has_value?(value) => true or false
=end

chi = {:first_name => "Coding", :last_name => "Dojo"}
me = {"first_name": "Daniel", "last_name": "Smith"}

puts me.delete(:first_name)
puts chi.empty?
puts chi.has_key?(:last_name)
puts me.has_value?("Coding")
