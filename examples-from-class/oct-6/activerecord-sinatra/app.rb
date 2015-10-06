require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:sinatra_project.sqlite3"

get "/" do
  @users = User.all
  erb :index
end