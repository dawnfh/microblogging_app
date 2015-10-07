class CreateTables < ActiveRecord::Migration
  def change
    # this is the table that stores all users
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
    end

    # this is the table that stores the follows
    create_table :follows do |t|
      t.integer :follower_id
      t.integer :followee_id
    end
  end
end
