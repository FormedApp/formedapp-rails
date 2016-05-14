class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :message, null: false
      t.integer :activity_id
      t.integer :user_id, null: false

      t.timestamps null: false

      t.index :activity_id
      t.index :user_id
      t.foreign_key :activities
      t.foreign_key :users
    end
  end
end
