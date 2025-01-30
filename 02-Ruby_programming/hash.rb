sample_hash1 = {'a' => 1, 'b' => 2, 'c' => 3} # key - value pair

puts sample_hash1

sample_hash2 = {a: 1, b: 2, c: 3} # symbol - value pair
puts sample_hash2

puts 

my_details = {'name' => 'sanket', 'favcolor' => 'red'}
p my_details["favcolor"]

puts 

myhash = {a: 1, b: 2, c: 3, d: 4}
p myhash[:c]
p myhash[:d] = 7   # add new key-value pair

puts myhash

myhash.delete(:d)
puts myhash