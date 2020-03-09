class User < ActiveRecord::Base
  user = User.new
    user.email = "bob@email.com"
    user.name = "Bob"
    user.save
end


# class User < ActiveRecord:: Base
# end
# Create a directory called models 
# inside the sinatra_ar directory.  
# Then create a file user.rb in the 
# models directory with the two lines above.

user = User.new
  user.email = "bob@email.com"
  user.name = "Bob"
  user.save 
  # this will generate the insert sql string
  # INSERT INTO "users"("name","email") VALUES("Bob", "bob@email.com")
  # and sends it to the database
