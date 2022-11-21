class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :region, presence: true
  validates :renewal_date, presence: true
  validates :start_date, presence: true
end
