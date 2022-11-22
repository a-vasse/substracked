puts "seeding plans..."

Plan.create!(
  name: "Basic with ads",
  price: 790, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  name: "Basic",
  price: 990, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  name: "Standard",
  price: 1490, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  name: "Premium",
  price: 1980, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  name: "Monthly",
  price: 1980, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Amazon Prime")
)

Plan.create!(
  name: "Annual",
  price: 1980, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Amazon Prime")
)

  Plan.create!(
  name: "",
  price: 900, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://tv.apple.com/jp?l=en",
  resource: resource.find_by(name: "Apple TV")
)

  Plan.create!(
  name: "monthly",
  price: 990 , billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.disneyplus.com/en-jp",
  resource: resource.find_by(name: "Disney +")
)

  Plan.create!(
  name: "annual",
  price: 9900, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.disneyplus.com/en-jp",
  resource: resource.find_by(name: "Disney +")
)

  Plan.create!(
  name: "individual",
  price: 20400, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.masterclass.com/",
  resource: resource.find_by(name: "Masterclass")
)

  Plan.create!(
  name: "Duo",
  price: 27600, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.masterclass.com/",
  resource: resource.find_by(name: "Masterclass")
)

  Plan.create!(
  name: "Family",
  price: 31200, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.masterclass.com/",
  resource: resource.find_by(name: "Masterclass")
)

  Plan.create!(
  name: "",
  price: 1026, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.hulu.jp/",
  resource: resource.find_by(name: "Hulu")
)

  Plan.create!(
  name: "PC/Console",
  price: 850, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.xbox.com/ja-JP/xbox-game-pass",
  resource: resource.find_by(name: "Xbox game pass")
)

  Plan.create!(
  name: "Ultimate",
  price: 1100, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.xbox.com/ja-JP/xbox-game-pass",
  resource: resource.find_by(name: "Xbox game pass")
)

  Plan.create!(
  name: "Essential",
  price: 850, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  resource: resource.find_by(name: "Playstation plus")
)

  Plan.create!(
  name: "Extra",
  price: 1300, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  resource: resource.find_by(name: "Playstation plus")
)

  Plan.create!(
  name: "Premium",
  price: 1550, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  resource: resource.find_by(name: "Playstation plus")
)

  Plan.create!(
  name: "individual",
  price: 306, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  name: "individual plus",
  price: 4900, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  name: "family",
  price: 4500, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  name: "family plus",
  price: 8900, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  name: "Premium",
  price: 563, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://github.com/",
  resource: resource.find_by(name: "Github")
)

  Plan.create!(
  name: "paper",
  price: 4900, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.nikkei.com/",
  resource: resource.find_by(name: "Nikkei")
)

  Plan.create!(
  name: "Electronic",
  price: 4277, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.nikkei.com/",
  resource: resource.find_by(name: "Nikkei")
)

  Plan.create!(
  name: "Year-name",
  price: 2815, billing_cycle: 12,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "The New York Times")
)

  Plan.create!(
  name: "individual",
  price: 1180, billing_cycle: 1,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  name: "individual annual",
  price: 11800, billing_cycle: 12,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  name: "family",
  price: 2280, billing_cycle: 1,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  name: "student",
  price: 680, billing_cycle: 1,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  name: "S",
  price: 3800, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.radishbo-ya.co.jp/",
  resource: resource.find_by(name: "Radish Boya")
)

  Plan.create!(
  name: "M",
  price: 4200, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.radishbo-ya.co.jp/",
  resource: resource.find_by(name: "Radish Boya")
)

  Plan.create!(
  name: "6 meal",
  price: 3888, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://nosh.jp/influencer-promotion?key=retargeting1000off&utm_source=google&utm_medium=cpc&utm_campaign=nosh&utm_content=nosh&utm_term=%E5%BC%81%E5%BD%93%20nosh&gclid=Cj0KCQiAveebBhD_ARIsAFaAvrG1c1B8STzIfkOf98h-Zn4L4Hs7AN5oxs0LMtQlJ_ZwtzMNsvBmjjIaAtn1EALw_wcB",
  resource: resource.find_by(name: "Nosh")
)

  Plan.create!(
  name: "2 people 3 recipes",
  price: 4860, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.hellofresh.jp/",
  resource: resource.find_by(name: "HelloFresh")
)

  Plan.create!(
  name: "2 people 4 recipes",
  price: 6060, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.hellofresh.jp/",
  resource: resource.find_by(name: "HelloFresh")
)

  Plan.create!(
  name: "4 people 3 recipes",
  price: 9060, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.hellofresh.jp/",
  resource: resource.find_by(name: "HelloFresh")
)
puts "finnished seeding plans..."
