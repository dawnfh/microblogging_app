require "sinatra"

get "/contact-us" do
  erb :form
end

post "/contact-us-post" do
  puts "THESE ARE THE PARAMS FROM THE POST"
  puts params.inspect
end