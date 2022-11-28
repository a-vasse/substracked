class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validates :region, presence: true
  validates :renewal_date, presence: true
  validates :start_date, presence: true

  scope :upcoming_yearly,
        -> {
          joins(:plan).where(
            "EXTRACT(DOY FROM renewal_date)::int BETWEEN ? AND ? AND status = ? AND plans.billing_cycle = ?",
            *[Date.today.yday, 1.week.from_now.yday, true, 12],
          )
        }
  scope :upcoming_monthly,
        -> {
          joins(:plan).where(
            "EXTRACT(DAY FROM renewal_date) IN (?) AND status = ? AND plans.billing_cycle = ?",
            *[(Date.today..1.week.from_now).to_a.map(&:day), true, 1],
          )
        }
  scope :upcoming, -> { upcoming_monthly.or(upcoming_yearly) }

  def display_name
    "#{plan.resource.name} - #{region}"
  end
end
