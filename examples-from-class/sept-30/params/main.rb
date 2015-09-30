require "sinatra"

get "/sup" do
  # puts will display "THESE ARE MY PARAMS" in the terminal
  puts "THESE ARE MY PARAMS"

  # puts will display whatever query string params in the terminal
  puts params.inspect
end