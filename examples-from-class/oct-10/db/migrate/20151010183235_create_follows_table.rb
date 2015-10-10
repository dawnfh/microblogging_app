class CreateFollowsTable < ActiveRecord::Migration
  # we define what we want to change in our database inside
  #   this method
  def change
    # here we are creating the users table
    create_table :follows do |t|
      # here we are creating the foreign key column
      #   that will hold the user_id of the user is being
      #   doing the following, we have to create the association 
      #   when we indicate which user we want to follow
      t.integer :follower_id

      # here we are creating the foreign key column
      #   that will hold the user_id of the user is being
      #   followed, we have to create the association when we
      #   indicate which user we want to follow
      t.integer :followee_id
    end
  end
end
