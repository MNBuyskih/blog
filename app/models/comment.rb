class Comment < ActiveRecord::Base
  attr_accessible :email, :name, :post_id, :text
  belongs_to :post

  validates :post_id, :presence => true, :on => :create
  validates :post, :associated => true
  validates :name, :presence => true, :on => :create
  validates :email, :presence => true, :on => :create


end
