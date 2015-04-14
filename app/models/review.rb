class Review < ActiveRecord::Base

  attr_accessible :content, :user_id, :post_requirement_id, :book_requirement_id, :skill_post_requirement_id
  belongs_to :post_requirement
  belongs_to :book_post_requirement
  belongs_to :skill_post_requirement
  belongs_to :user
  

end
