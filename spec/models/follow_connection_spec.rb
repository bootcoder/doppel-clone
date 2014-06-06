require 'spec_helper'

describe FollowConnection do
	follower = User.create(name: "test", username: "test", email: "test", password: "abc123")
	followed = User.create(name: "test", username: "test", email: "test", password: "abc123")
	friend1 = User.create(name: "test", username: "test", email: "test", password: "abc123")
	friend2 = User.create(name: "test", username: "test", email: "test", password: "abc123")
	superstar = User.create(name: "test", username: "test", email: "test", password: "abc123")

	it "makes a connection between two people" do
		expect {FollowConnection.create(follower_user_id: follower.id, followed_user_id: followed.id)}.to change {FollowConnection.count}.by(1)
	end
end