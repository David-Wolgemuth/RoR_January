a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]


names.each do |person|
  puts person.values.join(': ')
end

puts ...or...
puts names.size
puts names.collect { |p| "#{p[:first_name]}: #{p[:last_name]}" }

puts ...or...
puts names.collect { |p| "#{p[:first_name]}: #{p[:last_name]}" }
