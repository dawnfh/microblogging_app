require "sinatra"
require "sinatra/activerecord"
require "./models"

configure :development do
  set :database, "sqlite3:how-to-follow.sqlite3"
end

get "/" do
  "display some stuff"
end