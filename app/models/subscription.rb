class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validates :renewal_date, presence: true
  validates :start_date, presence: true

  scope :upcoming_yearly,
        -> {
          joins(:plan).where(
            "renewal_date BETWEEN DATE(?) AND DATE(?) AND status = ? AND plans.billing_cycle = ?",
            Date.today, 1.week.from_now.to_date, true, 12
          )
        }
  scope :upcoming_monthly,
        -> {
          joins(:plan).where(
            "renewal_date IN (?) AND status = ? AND plans.billing_cycle = ?",
            Date.today..1.week.from_now.to_date, true, 1
          )
        }
  scope :upcoming, -> { upcoming_monthly.or(upcoming_yearly) }

  def display_name
    "#{plan.resource.name} - #{region}"
  end
end
