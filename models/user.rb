class User < ActiveRecord::Base
  user = User.new
    user.email = "bob@email.com"
    user.name = "Bob"
    user.save
end 
  

  # this will generate the insert sql string
  # INSERT INTO "users"("name","email") VALUES("Bob", "bob@email.com")
  # and sends it to the database
