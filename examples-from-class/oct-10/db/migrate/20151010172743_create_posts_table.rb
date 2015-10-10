class CreatePostsTable < ActiveRecord::Migration
  # we define what we want to change in our database inside
  #   this method
  def change
    # here we are creating the users table
    create_table :posts do |t|
      t.string :body
      # here we are creating the foreign key column
      #   that will hold the user_id of the user who created
      #   this post, we have to create the association when we
      #   create this post
      t.integer :user_id
    end
  end
end
