# The application will compare the username and password wuth the database
# If the given credentials are correct then you will get into the user object..


users = [
  {username: "sanket31", password: "pass123" },
  {username: "atharv19", password: "pass1234" },
  {username: "nikhil21", password: "pass12345" },
  {username: "aakash32", password: "pass123567" },
  {username: "ram432", password: "pass12334" }
]

def auth_user(username, password, user_list)
  user_list.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      user_record
    end
  end
  "Credentials are Invalid"
end

puts "Authenticator Application"
25.times{print "-"}
puts

valid_attempts = 1
while valid_attempts < 4
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  
  # created method for this code...
  # users.each do |user|
  #   if user[:username] == username && user[:password] == password
  #     puts user
  #     break
  #   else
  #     puts "invalid"
  #   end
  # end

  puts "Press n to quit or any other key to continue:"
  input = gets.chomp.downcase
  break if input == "n"
  valid_attempts += 1
end

puts "You have exceeded the attemps" if valid_attempts == 4