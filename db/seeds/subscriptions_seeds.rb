require "date"

puts "Seeding subscriptions..."

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Netflix"), price: 990),
  status: true,
  notes: "Catch up on Stranger Things",
  region: "Japan",
  renewal_date: Date.iso8601("2022-12-05"),
  start_date: Date.iso8601("2020-08-24"),
)

Subscription.create!(
  user: User.first,
  plan:
    Plan.find_by(
      resource: Resource.find_by(name: "Playstation Plus"),
      price: 1300,
    ),
  status: true,
  notes: "",
  region: "United Kingdom",
  renewal_date: Date.iso8601("2023-01-27"),
  start_date: Date.iso8601("2022-08-27"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Github"), price: 563),
  status: true,
  notes: "Registered for LeWagon",
  region: "Worldwide",
  renewal_date: Date.iso8601("2022-12-07"),
  start_date: Date.iso8601("2021-03-05"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Hulu"), price: 1026),
  status: true,
  notes: "Wife's account",
  region: "Japan",
  renewal_date: Date.iso8601("2023-01-17"),
  start_date: Date.iso8601("2021-08-17"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Disney +"), price: 990),
  status: false,
  notes: "Marvel, Marvel everywhere.",
  region: "Japan",
  renewal_date: Date.iso8601("2022-08-17"),
  start_date: Date.iso8601("2021-08-17"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Youtube Premium"), price: 11_800),
  status: true,
  notes: "",
  region: "Japan",
  renewal_date: Date.iso8601("2023-01-17"),
  start_date: Date.iso8601("2021-08-17"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Nikkei"), price: 4277),
  status: false,
  notes: "Reading practice",
  region: "Japan",
  renewal_date: Date.iso8601("2023-01-17"),
  start_date: Date.iso8601("2021-08-17"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Masterclass"), price: 20_400),
  status: false,
  notes: "",
  region: "",
  renewal_date: Date.iso8601("2023-01-17"),
  start_date: Date.iso8601("2021-08-17"),
)

Subscription.create!(
  user: User.first,
  plan: Plan.find_by(resource: Resource.find_by(name: "Apple TV"), price: 900),
  status: true,
  notes: "Something something Jason Momoa",
  region: "Japan",
  renewal_date: Date.iso8601("2023-01-17"),
  start_date: Date.iso8601("2021-08-17"),
)


puts "Finished seeding subscriptions!"
