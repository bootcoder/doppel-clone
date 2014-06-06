require 'spec_helper'

describe User do
	# it "has a password meeting length criteria" do
	# end

	# it "has a unique username" do
	# end

	# it "has a unique email" do
	# end

	# it "can have many twits" do
	# end

	# let idea

	it "creates a user when given proper params" do
		expect {User.create(username: "testname", name: "Mister Jenkins", email: "hello@example.com", password: "abc1234")}.to change{User.count}.by(1)
	end

	# it "does not create a user when given invalid params" do
	# 	expect {User.create(username: "", name: "Mister Jenkins", email: "hello@example.com", password: "")}.should_not be_valid
	# end


end