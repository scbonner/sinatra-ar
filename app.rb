require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "./models/user"
set :database, { adapter: "sqlite3", database: "mydb.db" }
