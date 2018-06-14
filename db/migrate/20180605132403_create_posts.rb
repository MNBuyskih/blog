class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :lead
      t.text :body
      t.references :user
      t.references :category

      t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :category_id
  end
end
