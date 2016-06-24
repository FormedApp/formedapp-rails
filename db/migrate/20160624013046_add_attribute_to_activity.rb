class AddAttributeToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :respond_content, :string
  end
end
