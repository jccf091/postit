class Comment < ActiveRecord::Base
	belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
	belongs_to :post

	validates :body, presence: true
	validates :post, presence: true
	validates :creator, presence: true
end
