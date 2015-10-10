require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "./models"

# here set the database information
set :database, "sqlite3:login.sqlite3"

# here we enable sessions
enable :sessions

# HTTP GET method and "/" action route
get "/" do
  # this will output whatever is within the index.erb template
  erb :index
end

# HTTP GET method and "/login" action route
get "/login" do
  # this will output whatever is within the login.erb template
  erb :login
end

# HTTP POST method and "/login" action route
post "/login" do
  # here we load the user according to the email
  #   input field value entered in the form
  @user = User.where(email: params[:email]).first

  # here we must check if the user exists and
  #   check if the password matches the email
  if @user && @user.password == params[:password]
    # if the user exists we are storing the person's user id so
    #   we can refer to it in the future which means
    #   the user is 'logged in' because the session is 
    #   available to us in every route
    session[:user_id] = @user.id

    # tell the person on the website that they are now
    #   logged in
    flash[:info] = "You are now logged in"

    # this redirects to the get "/" route because
    #   the password is correct
    redirect "/"
  else
    # if the user does not exist then tell the person
    #   on the website that their password is incorrect
    #   using a flash message
    flash[:alert] = "Your password is incorrect"

    # this redirects to the get "/login" route because the
    #   password is incorrect
    redirect "/login"
  end
end

# HTTP GET method and "/signup" action route
get "/signup" do
  # tell the person that they are signed up and logged in
  flash[:info] = "You are now signed up and logged in"

  # this will output whatever is within the signup.erb template
  erb :signup
end

# HTTP POST method and "/signup" action route
post "/signup" do
  # here we create a user according to the values entered
  #   in the signup form for the email and password input fields
  @user = User.create(email: params[:email], password: params[:password])
  
  # since the user is now created we immediately store
  #   their user id in the session because we assume he/she
  #   wants to be logged in immediately and have access to the
  #   logged in content
  session[:user_id] = @user.id

  # this redirects to the get "/" route
  redirect "/"
end

# HTTP GET method and "/logout" action route
get "/logout" do
  # here we set the session user_id key value
  #   pair to nil because in the other routes
  #   when they check to see if the user is logged in
  #   they are checking to see if the user_id
  #   exists within the session
  # in doing all this using laymen's terms it means
  #   the user is logged out
  session[:user_id] = nil

  # tell the person on the website that they are now
  #   logged out
  flash[:info] = "You are now logged out"

  # this redirects to the get "/" route
  redirect "/"
end

# HTTP GET method and "/posts/new" action route
get "/posts/new" do
  # this will output whatever is within the new_post.erb template
  erb :new_post
end

# HTTP GET method and "/posts" action route
get "/posts" do
  # this loads all the created posts from the database
  #   and stores it within the @posts instance variable
  #   ONLY OF THE LOGGED IN USER
  @posts = Post.where(user_id: session[:user_id])

  # this will output whatever is within the posts.erb template
  erb :posts
end

# HTTP GET method and "/posts" action route
get "/posts/all" do
  # this loads all the created posts from the database
  #   and stores it within the @posts instance variable
  @posts = Post.all

  # this will output whatever is within the posts.erb template
  erb :posts
end

# HTTP GET method and "/users/:user_id/posts" action route
get "/users/:user_id/posts" do
  # this loads all the created posts from the database
  #   and stores it within the @posts instance variable
  #   ONLY OF THE SPECIFIC USER WITH THE user_id set in the browser
  #   so entering "localhost:4567/users/5/posts" would display
  #   the posts of the user with an id of 5
  @posts = Post.where(user_id: params[:user_id])

  # this will output whatever is within the posts.erb template
  # notice how this also goes to the posts.erb template
  #   think DRY (Don't Repeat Yourself)
  erb :posts
end

# HTTP POST method and "/posts" action route
post "/posts" do
  # here we are creating a post with the body of what was
  #   set in the form body input field and user_id of
  #   whatever the logged in user is
  # this creates an association between the new post and
  #   the logged in user
  Post.create(body: params[:body], user_id: session[:user_id])

  # this redirects to the get "/posts" route so someone
  #   can see all their posts
  redirect "/posts/all"
end

# this method is available in every template
def current_user
  # here we check if the user is logged in
  if session[:user_id]
    # if the user is logged in then load that user
    #   into the current_user instance variable using
    #   the session[:user_id] you have stored
    @current_user = User.find(session[:user_id])
  end
  # this is implicit with ruby but if the if statem is not logged in
  #   then it will return nil, so you do not have to say
  #   else
  #     return nil
  #   end
  # ruby takes care of this for us
end