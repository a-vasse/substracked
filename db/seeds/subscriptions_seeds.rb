require "date"

puts "Seeding subscriptions..."

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Netflix"), price: 990),
  status: true,
  notes: "Added during covid",
  region: "Japan",
  renewal_date: Date.iso8601("2022-12-24"),
  start_date: Date.iso8601("2020-08-24"),
)

Subscription.create!(
  user: User.first,
  plan:
    Plan.find_by(
      resource: Resource.find_by(name: "Playstation Plus"),
      price: 1300,
    ),
  status: false,
  notes: "",
  region: "United Kingdom",
  renewal_date: Date.iso8601("2022-11-27"),
  start_date: Date.iso8601("2022-08-27"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Github"), price: 563),
  status: true,
  notes: "",
  region: "Germany",
  renewal_date: Date.iso8601("2022-12-05"),
  start_date: Date.iso8601("2021-03-05"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Hulu"), price: 1026),
  status: false,
  notes: "Is this note working?",
  region: "Hong Kong",
  renewal_date: Date.iso8601("2022-12-17"),
  start_date: Date.iso8601("2021-08-17"),
)

puts "Finished seeding subscriptions!"
