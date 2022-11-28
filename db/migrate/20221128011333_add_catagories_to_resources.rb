class AddCatagoriesToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :category, :text
  end
end
