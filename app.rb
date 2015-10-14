require "sinatra"
require "sinatra/activerecord"
require "bundler/setup"
require "rack-flash"
require './models'

enable :sessions
configure(:development){set :database, "sqlite3:myspotblog.sqlite3"}
set :sessions, true
use Rack::Flash, sweep: true

get '/' do
	erb :login   
end

#Need to implement session for logging in


post '/log-in' do   
	  puts "my params are" + params.inspect
	  if  @user && @user.password == params[:password]
	  	session[:user_id] = @user.id
	  	redirect '/blog'
	  else
	  	redirect '/log-in'
	  end
end
	  
	  
# 	@user = User.where(username: params[:username]).first
# 	# puts "my params are" + params.inspect
# 	if @user.password == params[:password]
# 		redirect '/blog'
# 	else
# 		redirect :back
# 	end		
# end


 get '/blog' do    
   erb :blog, layout: false
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



get '/signup' do  
	# User.create(fname: "Dawn", lname: "Feintuch", username: "dawn2015") # to fix
	erb :profilesetupform
end

post '/signup' do
	#this is where we create the user based on the params from the form
	@user = User.new(params)
	if @user.save
		# need to implement sessions for signing up.
		redirect "/blog"
	else
		redirect "/log-in"
	end		

end	

get "/user_route" do
	@user_instance_variable = User.last
	erb :user_template
end

get '/post-edit' do
	erb :post_post
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

# post '/login' do
# 	@user = User.
