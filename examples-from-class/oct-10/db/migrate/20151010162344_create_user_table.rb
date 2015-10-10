class CreateUserTable < ActiveRecord::Migration
  # we define what we want to change in our database inside
  #   this method
  def change
    # here we are creating the users table
    create_table :users do |t|
      t.string :email
      t.string :password
    end
  end
end
