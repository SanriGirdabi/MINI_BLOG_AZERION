class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :header
      t.string :color
      t.string :title
      t.string :design
      t.string :body
      t.integer :user_id

      t.timestamps
    end
    add_index :posts, :user_id, unique: true
  end
end
