# any models in this file will be available to you in the
#   app.rb file because of the require "./models" line in the
#   app.rb file

# we are inheriting methods like
#   User.create, User.find, User.all from ActiveRecord::Base
class User < ActiveRecord::Base
  # here we are basically telling ActiveRecord to define the
  #   @user.posts method (assuming we have a @user instance variable)
  has_many :posts
end

# we are inheriting methods like
#   Post.create, Post.find, Post.all from ActiveRecord::Base
class Post < ActiveRecord::Base
  # here we are basically telling ActiveRecord to define the
  #   @post.user method (assuming we have a @user instance variable)
  belongs_to :user
end