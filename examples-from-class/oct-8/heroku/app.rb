require "sinatra"
require "sinatra/activerecord"

configure :development do
  set :database, "sqlite3:heroku-test.sqlite3"
end

get "/" do
  "display some stuff"
end