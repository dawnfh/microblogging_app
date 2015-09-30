# load the sinatra library/gem
require "sinatra"

# tell sinatra to display the content of the home.erb file
get "/home" do
  erb :home
end