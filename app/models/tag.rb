class Tag < ActiveRecord::Base
  attr_accessible :tag
  has_and_belongs_to_many :posts

  def to_param
    tag
  end
end
