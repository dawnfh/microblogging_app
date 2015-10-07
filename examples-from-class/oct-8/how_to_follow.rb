require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:how-to-follow.sqlite3"

get "/" do
  "print some bullshit"
end