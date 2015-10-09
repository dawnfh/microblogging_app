class CreateUsersTable < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :fname
			t.string :lname
			t.string :email
			t.string :username
			t.string :password
		end

		create_table :posts do |t|
			t.string :title
			t.string :body
			t.integer :user_id
			t.datetime :created_at
			t.datetime :updated_at
		end

		create_table :follows do |t|
			t.integer :follower_id
			t.integer :followee_id		
		end
	end
end
