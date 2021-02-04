class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :upvotes
      t.integer :post_id
      t.boolean :toggle_upvote
      t.boolean :toggle_downvote
      t.integer :user_id

      t.timestamps
    end
  end
end
