<<<<<<< HEAD
class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subreddit
      t.string :content
      t.integer :upvotes
      t.integer :user_id

      t.timestamps
    end
  end
end
=======
class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subreddit
      t.string :user
      t.string :content
      t.integer :upvotes

      t.timestamps
    end
  end
end
>>>>>>> delete-user-model
