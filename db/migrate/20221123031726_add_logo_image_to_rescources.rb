class AddLogoImageToRescources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :logo, :text
  end
end
