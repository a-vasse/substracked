class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.integer :price
      t.integer :billing_cycle
      t.string :name
      t.integer :cancellation_notice
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
