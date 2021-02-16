class RemoveIndexFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_index :posts, :user_id
    remove_index :comments, :user_id
    remove_index :comments, :post_id
  end
end
