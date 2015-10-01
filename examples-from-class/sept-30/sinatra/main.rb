# load the sinatra library/gem
require "sinatra"

# tell sinatra to display Hello World
#   when you visit http://localhost:4567 url in the browser
get "/" do
  "I watch Breaking Bad"
end