require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "./models"

set :database, "sqlite3:data-processing-sinatra.sqlite3"
enable :sessions

get "/" do
  if session[:user_i]
    @user = User.find(session[:user_id])
  end

  erb :index
end

get "/sign-in" do
  erb :sign_in_form
end

post "/sign-in" do
  @user = User.where(email: params[:email]).first

  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    flash[:notice] = "The Matrix has you..."
  else
    flash[:alert] = "Are you sure that's air you are breathing?"
  end

  redirect "/"
end

get "/sign-out" do
  if session[:user_id]
    @user = User.find(session[:user_id])
    session[:user_id] = nil
    flash[:notice] = "You have been signed out of the Matrix..."
  else
    flash[:alert] = "You must first choose the red pill"
  end

  redirect "/"
end