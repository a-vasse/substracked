puts "seeding plans..."

Plan.create!(
  name: "Basic with ads",
  price: 790,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Netflix"),
)

Plan.create!(
  name: "Basic",
  price: 990,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Netflix"),
)

Plan.create!(
  name: "Standard",
  price: 1490,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Netflix"),
)

Plan.create!(
  name: "Premium",
  price: 1980,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Netflix"),
)

Plan.create!(
  name: "Monthly",
  price: 1980,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Amazon Prime"),
)

Plan.create!(
  name: "Annual",
  price: 19_800,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Amazon Prime"),
)

Plan.create!(
  name: "",
  price: 900,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Apple TV"),
)

Plan.create!(
  name: "Monthly",
  price: 990,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Disney +"),
)

Plan.create!(
  name: "Annual",
  price: 9900,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Disney +"),
)

Plan.create!(
  name: "Individual",
  price: 20_400,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Masterclass"),
)

Plan.create!(
  name: "Duo",
  price: 27_600,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Masterclass"),
)

Plan.create!(
  name: "Family",
  price: 31_200,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Masterclass"),
)

Plan.create!(
  name: "",
  price: 1026,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Hulu"),
)

Plan.create!(
  name: "PC/Console",
  price: 850,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Xbox Game Pass"),
)

Plan.create!(
  name: "Ultimate",
  price: 1100,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Xbox Game Pass"),
)

Plan.create!(
  name: "Essential",
  price: 850,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Playstation Plus"),
)

Plan.create!(
  name: "Extra",
  price: 1300,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Playstation Plus"),
)

Plan.create!(
  name: "Premium",
  price: 1550,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Playstation Plus"),
)

Plan.create!(
  name: "Individual",
  price: 306,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Nintendo Online"),
)

Plan.create!(
  name: "Individual plus",
  price: 4900,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Nintendo Online"),
)

Plan.create!(
  name: "Family",
  price: 4500,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Nintendo Online"),
)

Plan.create!(
  name: "Family Plus",
  price: 8900,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Nintendo Online"),
)

Plan.create!(
  name: "Premium",
  price: 563,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Github"),
)

Plan.create!(
  name: "Paper",
  price: 4900,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Nikkei"),
)

Plan.create!(
  name: "Electronic",
  price: 4277,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Nikkei"),
)

Plan.create!(
  name: "Year-name",
  price: 2815,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "The New York Times"),
)

Plan.create!(
  name: "Individual",
  price: 1180,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Youtube Premium"),
)

Plan.create!(
  name: "Individual Annual",
  price: 11_800,
  billing_cycle: 12,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Youtube Premium"),
)

Plan.create!(
  name: "Family",
  price: 2280,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Youtube Premium"),
)

Plan.create!(
  name: "Student",
  price: 680,
  billing_cycle: 1,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Youtube Premium"),
)

Plan.create!(
  name: "S",
  price: 3800,
  billing_cycle: 0.25,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Radish Boya"),
)

Plan.create!(
  name: "M",
  price: 4200,
  billing_cycle: 0.25,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Radish Boya"),
)

Plan.create!(
  name: "6 meal",
  price: 3888,
  billing_cycle: 0.25,
  cancellation_notice: "",
  resource: Resource.find_by(name: "Nosh"),
)

Plan.create!(
  name: "2 people 3 recipes",
  price: 4860,
  billing_cycle: 0.25,
  cancellation_notice: "",
  resource: Resource.find_by(name: "HelloFresh"),
)

Plan.create!(
  name: "2 people 4 recipes",
  price: 6060,
  billing_cycle: 0.25,
  cancellation_notice: "",
  resource: Resource.find_by(name: "HelloFresh"),
)

Plan.create!(
  name: "4 people 3 recipes",
  price: 9060,
  billing_cycle: 0.25,
  cancellation_notice: "",
  resource: Resource.find_by(name: "HelloFresh"),
)
puts "Finished seeding plans!"
