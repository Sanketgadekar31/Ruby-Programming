require_relative 'crud' #if same directory
# $LOAD_PATH << "." #if different directory
# require 'crud'  #if same directory

users = [
      {username: "sanket31", password: "pass123" },
      {username: "atharv19", password: "pass1234" },
      {username: "nikhil21", password: "pass12345" },
      {username: "aakash32", password: "pass123567" },
      {username: "ram432", password: "pass12334" }
    ]

hased_users = Crud.create_secure_users(users)

p hased_users