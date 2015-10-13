require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "rack-flash"
require './models'

enable :sessions
set :database, "sqlite3:myspotblog.sqlite3"
set :sessions, true
use Rack::Flash, sweep: true

get '/login' do
	erb :login   
end

post '/login' do     
	puts "my params are" + params.inspect 
	erb :login  
end


  get '/' do    
   erb :home, :layout => false
  end

  get '/blog' do    
   erb :blog
  end

 get '/profilesetupform' do    
   erb :profilesetupform
  end

 get '/form' do    
   erb :form
  end

 get '/contact' do    
   erb :contact
  end






# def send_email(message_body, name_input, email_input)
#  m = Mandrill::API.new 
# message = {  
#   :subject=> "Hello from the Mandrill API",  
#   :from_name=> name_input,  
#   :text=> message_body,  
#   :to=>[{:email=> "recipient@dom.com", :name=> "Rec Name"}],  
#   :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
#   :from_email=>email_input } 
# end


# post "/blog" do
#   # this invokes the send_email method defined above
#   send_email(params[:message_body],params[:name_input],params[:email_input])
# end


