class Plan < ApplicationRecord
  belongs_to :resource
  has_many :subscriptions

  validates :price, presence: true
  validates :billing_cycle, presence: true
end
