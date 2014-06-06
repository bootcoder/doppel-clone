class User < ActiveRecord::Base
  has_many :twits

  has_many :connections_in,
  	foreign_key: "follower_user_id",
  	class_name: "FollowConnection"

  has_many :followed_users,
  	through: :connections_in,
    source: :followed_user

  has_many :connections_out,
  	foreign_key: "followed_user_id",
  	class_name: "FollowConnection"

  has_many :follower_users,
  	through: :connections_out,
    source: :follower_user

  validates :name, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: 6..15
end

#error handling at account creation/update
