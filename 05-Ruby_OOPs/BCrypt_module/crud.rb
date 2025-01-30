module Crud
  require 'bcrypt'

  def Crud.creat_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def Crud.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = creat_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def Crud.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && BCrypt::Password.new(user_record[:password]) == password
        p "Credentials were correct"
        return user_record
      end
    end
    "Credentials were not correct"
  end

end