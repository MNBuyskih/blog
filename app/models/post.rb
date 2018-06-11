class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments

  attr_accessible :body, :lead, :title, :image, :user_id, :category_id

  validates :title, :presence => true, :on => :create
  validates :image, :presence => true, :on => :create
  validates :image, :format => {:with => /^https?:\/\/.+\.(:?jpg|jpeg|png)$/}, :on => :create
  validates :category_id, :presence => true, :on => :create
  validates :category, :associated => true
  validates :user_id, :presence => true, :on => :create
  validates :user, :associated => true
  validates :lead, :presence => true, :on => :create
  validates :body, :presence => true, :on => :create

  def self.filter(params)
    return Post.find_all_by_category_id(params[:category_id]) if params[:category_id]
    Post.all
  end

  def new_comment
    comment = Comment.new
    comment.post_id = @id
    comment
  end
end
