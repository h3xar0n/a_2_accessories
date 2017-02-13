class Product < ApplicationRecord
  has_many :orders
  has_many :comments, :dependent => :destroy
  validates :name, presence: true

	def highest_rating_comment
 		comments.rating_desc.first
	end
	def lowest_rating_comment
	  comments.rating_asc.first
	end
	def average_rating
	  comments.average(:rating).to_f
	end
	def total_comment
		unless $redis.keys.include?("total_comment_#{id}")
			$redis.set("totalComment", comments.count)
		end
		$redis.get("totalComment")
	end
end