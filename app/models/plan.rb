class Plan < ApplicationRecord
  belongs_to :resource

  validates :price, presence: true
  validates :billing_cycle, presence: true
end
