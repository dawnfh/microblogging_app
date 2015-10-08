require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "rack-flash"
require './models'

enable :sessions
set :database, "sqlite3:myspotblog.sqlite3"
set :sessions, true
use Rack::Flash, sweep: true

get "/login" do
	erb :login   
end
