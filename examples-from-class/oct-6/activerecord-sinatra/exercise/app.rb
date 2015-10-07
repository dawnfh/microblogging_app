require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:exercise.sqlite3"

get "/" do
  User.create(fname: "Patrisha", lname: "Caraballo", birthday: "12/1/1983")
end

get "/user_route" do
  @users_instance_variable = User.last
  erb :user_template
end