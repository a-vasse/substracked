class ChangeBillingCycleToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :plans, :billing_cycle, :float
  end
end
