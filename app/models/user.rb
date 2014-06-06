class User < ActiveRecord::Base
  has_many :twits
  validates :name, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: 6..15
end

#error handling at account creation/update
