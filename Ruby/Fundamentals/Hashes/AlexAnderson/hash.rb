# .delete(key) function
h = { "a" => 100, "b" => 200}
puts h.delete("a")
x = {:first_name => "Coding", :last_name => "Dojo"};
x.delete(:last_name);
puts x
# .empty? function
puts h.empty?
puts x.empty?

# .has_key function
puts h.has_key?("b")
puts h.has_key?("y")

# .has_value?(value)
puts h.has_value?(200)
puts x.has_value?("Dojo")
puts x.has_value?("Coding")
