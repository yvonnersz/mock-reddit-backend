class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subreddit
      t.string :user
      t.string :content
      t.integer :upvotes
      t.boolean :toggle_upvote
      t.boolean :toggle_downvote
      t.integer :user_id

      t.timestamps
    end
  end
end
