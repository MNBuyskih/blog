class AddViewsCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :views, :integer
  end
end
