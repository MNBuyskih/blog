class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :body, :lead, :title, :user_id, :category_id
end
