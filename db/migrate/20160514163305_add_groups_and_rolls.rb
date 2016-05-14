class AddGroupsAndRolls < ActiveRecord::Migration
  def change
  	create_table :groups do |t|
      t.string :title, null:false

      t.timestamps null: false
    end
    create_table :roles do |t|
      t.integer :group_id, null:false
      t.integer :user_id, null:false
      t.integer :role_type, null:false

      t.timestamps null: false

      t.index :group_id
      t.index :user_id
      t.foreign_key :groups
      t.foreign_key :users
    end
  end
end
