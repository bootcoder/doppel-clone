class CreateConnectionTable < ActiveRecord::Migration
  def change
  	create_table :follow_connections do |c|
  		c.integer :follower_user_id
  		c.integer :followed_user_id
  	end
  end
end
