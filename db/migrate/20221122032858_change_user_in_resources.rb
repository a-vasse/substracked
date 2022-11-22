class ChangeUserInResources < ActiveRecord::Migration[7.0]
  def change
    remove_reference :resources, :user
    add_reference :resources, :user, null: true, foreign_key: true
  end
end
