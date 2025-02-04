require_relative 'Crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s   # default method for class
    "First Name: #{@first_name}, 
    Last Name: #{last_name},
    Username: #{username},
    Email: #{email}"
  end

end

sanket = Student.new("Sanket", "Gadekar", "sanket31@gmail.com", 
                    "sanket31", "pass123")
atharv = Student.new("Atharv", "Joshi", "atharv19@gmail.com", 
                    "atharv19", "pass1234")

hashed_password = sanket.creat_hash_digest(sanket.password)

puts hashed_password