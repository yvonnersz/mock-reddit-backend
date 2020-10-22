<<<<<<< HEAD
class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :upvotes
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
=======
class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :user
      t.integer :upvotes
      t.integer :post_id

      t.timestamps
    end
  end
end
>>>>>>> delete-user-model
