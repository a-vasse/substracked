class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.boolean :status
      t.string :region
      t.text :notes
      t.date :renewal_date
      t.date :start_date
      t.integer :notification_frequency
      t.references :user, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
