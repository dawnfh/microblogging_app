class CreateUsersAndPostsTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :fname
      t.datetime :birthday
    end

    create_table :posts do |t|
      t.string :subject
      t.string :body
    end
  end
end
