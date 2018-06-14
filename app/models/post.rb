class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_and_belongs_to_many :tags

  attr_accessible :body, :lead, :title, :image, :user_id, :category_id, :tags_list
  attr_accessor :new_tags

  validates :title, presence: true, on: :create
  validates :image, presence: true, on: :create
  validates :image, format: { with: /^https?:\/\/.+\.(:?jpg|jpeg|png)$/ }, on: :create
  validates :category_id, presence: true, on: :create
  validates :category, associated: true
  validates :user_id, presence: true, on: :create
  validates :user, associated: true
  validates :lead, presence: true, on: :create
  validates :body, presence: true, on: :create

  def self.filter(params)
    return Post.find_all_by_category_id(params[:category_id]) if params[:category_id]
    return Post.joins(:tags).where('tags.tag': params[:tag_id]) if params[:tag_id]
    Post.all
  end

  def tags_list
    tags.map(&:tag).join(' ')
  end

  def tags_list=(tags)
    self.tags = tags.split.map do |t|
      tag = Tag.find_by_tag(t)
      unless tag
        tag = Tag.new
        tag.tag = t
        tag.save(validation: false)
      end
      tag
    end
  end
end
