require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
set :database, { adapter: "sqlite3", database: "mydb.db" }
require './models/user'


get '/' do
    @users = User.all
    erb :user_list
end

get '/new' do
    erb :user_form
end 

get '/delete' do
    erb :user_delete
end

post '/create' do
    user = User.new
    user.name = params{:name}
    user.email = params{:email}
    user.save
    "User created. id: #{user.id} name: #{user.name} email: #{user.email}"
end

post '/delete' do
    user = User.find_by(name: params[:name])
    if !user.nil?
      user.destroy
      "user #{params[:name]} deleted"
    else
      "user #{params[:name]} not found"
    end
end



# get ‘/’ should display the list of user names and emails using user_list.erb.
# In app.rb at this route, you would use the Active Record method of selecting all users, that being @users=User.all.

# get ‘/new’ should display user_form.erb which should provide a form for entering the user name and email.

# get ‘/remove’ should display user_delete.erb which should provide a form for specifying the name of the user to be deleted.

# post ‘/create’ should add the user returned by user_form and put up a confirmation message.  
# Here you would use the Active Record means of inserting a record.

# post ‘/delete’ should attempt to find and delete the user whose name is given by user_delete,
# and should give a confirmation or not found message.  Here you would use the Active Record 
# means of finding and then deleting a record (user = User.find_by(name: params[:name]), user.destroy ).
