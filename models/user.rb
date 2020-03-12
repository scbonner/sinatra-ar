class User < ActiveRecord::Base
    user = User.find_by(name: params[:name]), user.destroy
  #user = User.new
  #user.email = "bob@email.com"
  #user.name = "Bob"
  #user.save 
  # this will generate the insert sql string
  # INSERT INTO "users"("name","email") VALUES("Bob", "bob@email.com")
  # and sends it to the database
end

  #user = User.find(1)
  
  # Generate the sql string:
  # SELECT * FROM users WHERE id=1
  # creates a new instance of User and 
  # sets the properties from the values in the database
  
  
  #user = User.find_by(name: 'Bob')
  # Generated SQL
  # SELECT * FROM users WHERE name='Bob' LIMIT 1
  # creates a new instance of User and 
  # sets the properties from the values in the database
  # only one record returned
  
  #users = User.where(name: 'Bob')
  
  # Generated SQL
  # SELECT * FROM users WHERE name='Bob'
  # creates a new instance of User for each row returned
  # these are returned in an array
  # sets the properties from the values in the database
  
  #user = User.find(7)
  #user.update(name: “Robert”)
  
  #equivalent SQL
  # UPDATE users SET name=”Robert” WHERE id=7
  
  #user = User.find(1)
 # user.destroy
  # Generated SQL
  # DELETE FROM users WHERE ID = 1
  
  #users = User.where(name: ['Bob', 'Alice'])
  # Generated SQL
  # SELECT * FROM users WHERE name IN ('Bob', 'Alice')
  # creates a new instance of User for each row returned
  # sets the properties from the values in the database

  #users = User.where('age > ? AND age < ?',10, 20)
  #users = User.where(
     #'age > :lowest_age AND age < :highest_age ?',
     #{ lowest_age: 10, highest_age: 20})
  # Generated SQL
  # SELECT * FROM users WHERE age > 10 AND age < 20
  # creates a new instance of User for each row returned
  # sets the properties from the values in the database






# class User < ActiveRecord:: Base
# end
# Create a directory called models 
# inside the sinatra_ar directory.  
# Then create a file user.rb in the 
# models directory with the two lines above.



