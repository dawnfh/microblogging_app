class CreateStuff < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.datetime :birthday
    end

    create_table :posts do |t|
      t.string :subject
      t.string :body
      t.integer :user_id
    end

    create_table :profiles do |t|
      t.string :info
      t.integer :user_id
    end

    create_table :rooms do |t|
      t.string :info
    end

    create_table :user_rooms do |t|
      t.integer :user_id
      t.integer :room_id
    end
  end
end
