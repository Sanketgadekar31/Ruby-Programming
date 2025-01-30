str1 = "My name is Sanket"
p str1 

str2 = 'My name is Sanket'
p str2

# String interpolation
first_name = "Sanket"
last_name = "Gadekar"
puts "My first name is #{first_name} and last name is #{last_name}"

# methods
full_name = "Sanket Gadekar"
puts full_name.class

# check all methods availble 
# puts full_name.methods

puts full_name.length
puts full_name.reverse
# puts full_name.reverse! # !-> will permenetly reverse
puts full_name.upcase
puts full_name.downcase

puts full_name.empty?
puts "".empty?
puts "".nil?  # every thing in ruby is object so it has some value
puts nil.nil?
