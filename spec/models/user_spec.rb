require 'spec_helper'

describe User do
	it "creates a user when given proper params" do
		user_params = { username: "testname", name: "Mister Jenkins", email: "hello@example.com", password: "abc123" }
		p User.all
		expect {User.create(user_params)}.to change {User.count}.by(1)
	end

	it "does not create a user when given invalid params" do
		expect {User.create(username: "", name: "Mister Jenkins", email: "hello@example.com", password: "")}.to change {User.count}.by(0)
	end

	it { should validate_presence_of(:name) }

	it { should validate_uniqueness_of(:username) }

	it { should validate_uniqueness_of(:email) }

	it { should ensure_length_of(:password).is_at_least(6).is_at_most(15) }
end