class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :user_id
      t.datetime :date
      t.integer :post_id

      t.timestamps
    end
    add_index :comments, :user_id, unique: true
    add_index :comments, :post_id, unique: true
  end
end
