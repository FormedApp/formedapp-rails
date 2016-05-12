class AddActivities < ActiveRecord::Migration

  def change
    create_table :packs do |t|
      t.string :title, null: false
      t.timestamps
    end

    create_table :activities do |t|
      t.references :pack
      t.string     :title,           null: false
      t.text       :receive_content, null: false
      t.timestamps
    end
  end

end

