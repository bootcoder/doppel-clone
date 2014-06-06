class Twit < ActiveRecord::Base
	belongs_to :user
	validates :content, length: 1..140
  end

  #error handling at twit creation
