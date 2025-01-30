require 'bcrypt'

# my_password = BCrypt::Password.create("pass1234")
# puts my_password 
    #=> "$2a$12$Jz0Mh/IVHQ.t3YR.81QIMOocPRj2DbsU7XwmCJfZpKssKhD/rLsJG"

# my_password = BCrypt::Password.new("$2a$12$Jz0Mh/IVHQ.t3YR.81QIMOocPRj2DbsU7XwmCJfZpKssKhD/rLsJG")
# puts my_password == "pass1234"

users = [
  {username: "sanket31", password: "pass123" },
  {username: "atharv19", password: "pass1234" },
  {username: "nikhil21", password: "pass12345" },
  {username: "aakash32", password: "pass123567" },
  {username: "ram432", password: "pass12334" }
]

def creat_hash_digest(password)
  BCrypt::Password.create(password)
end

# def verify_hash_digest(password)
#   BCrypt::Password.new(password)
# end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = creat_hash_digest(user_record[:password])
  end
  list_of_users
end

new_users = create_secure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && BCrypt::Password.new(user_record[:password]) == password
      p "Credentials were correct"
      return user_record
    end
  end
  "Credentials were not correct"
end

p authenticate_user("ram432", "pass12334", new_users)