require "sinatra"

# this creates a page with the url of http:localhost:4567/eminem
get "/eminem" do
  erb :eminem
end

# this creates a page with the url of http:localhost:4567/patrisha
get "/patrisha" do
  "I am Patrisha and I am married to Orlando :)"
end

# this creates a page with the url of http:localhost:4567/orlando
get "/orlando" do
  "My name is Orlando and I approve this message!"
end