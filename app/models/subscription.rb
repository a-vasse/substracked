class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validates :region, presence: true
  validates :renewal_date, presence: true
  validates :start_date, presence: true

  def display_name
    "#{plan.resource.name} - #{region}"
  end
end
