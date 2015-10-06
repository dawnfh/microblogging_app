require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:sinatra_project_two.sqlite3"

get "/" do
  @users = User.all
  erb :index
end