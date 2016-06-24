class AddNewColumnToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :reflect_content, :string
  end
end
