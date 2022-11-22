puts "seeding plans..."

Plan.create!(
  plan: "Basic with ads",
  price: 790, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  plan: "Basic",
  price: 990, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  plan: "Standard",
  price: 1490, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  plan: "Premium",
  price: 1980, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Netflix")
)

Plan.create!(
  plan: "Monthly",
  price: 1980, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Amazon Prime")
)

Plan.create!(
  plan: "Annual",
  price: 1980, billing_cycle: 1,
  Cancellation_notice: "> 1 hour ",
  url: "https://www.netflix.com/",
  resource: resource.find_by(name: "Amazon Prime")
)

  Plan.create!(
  plan: "",
  price: 900, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://tv.apple.com/jp?l=en",
  resource: resource.find_by(name: "Apple TV")
)

  Plan.create!(
  plan: "monthly",
  price: 990 , billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.disneyplus.com/en-jp",
  resource: resource.find_by(name: "Disney +")
)

  Plan.create!(
  plan: "annual",
  price: 9900, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.disneyplus.com/en-jp",
  resource: resource.find_by(name: "Disney +")
)

  Plan.create!(
  plan: "individual",
  price: 20400, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.masterclass.com/",
  resource: resource.find_by(name: "Masterclass")
)

  Plan.create!(
  plan: "Duo",
  price: 27600, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.masterclass.com/",
  resource: resource.find_by(name: "Masterclass")
)

  Plan.create!(
  plan: "Family",
  price: 31200, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.masterclass.com/",
  resource: resource.find_by(name: "Masterclass")
)

  Plan.create!(
  plan: "",
  price: 1026, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.hulu.jp/",
  resource: resource.find_by(name: "Hulu")
)

  Plan.create!(
  plan: "PC/Console",
  price: 850, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.xbox.com/ja-JP/xbox-game-pass",
  resource: resource.find_by(name: "Xbox game pass")
)

  Plan.create!(
  plan: "Ultimate",
  price: 1100, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.xbox.com/ja-JP/xbox-game-pass",
  resource: resource.find_by(name: "Xbox game pass")
)

  Plan.create!(
  plan: "Essential",
  price: 850, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  resource: resource.find_by(name: "Playstation plus")
)

  Plan.create!(
  plan: "Extra",
  price: 1300, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  resource: resource.find_by(name: "Playstation plus")
)

  Plan.create!(
  plan: "Premium",
  price: 1550, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  resource: resource.find_by(name: "Playstation plus")
)

  Plan.create!(
  plan: "individual",
  price: 306, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  plan: "individual plus",
  price: 4900, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  plan: "family",
  price: 4500, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  plan: "family plus",
  price: 8900, billing_cycle: 12,
  Cancellation_notice: "",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  resource: resource.find_by(name: "Nintendo online")
)

  Plan.create!(
  plan: "Premium",
  price: 563, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://github.com/",
  resource: resource.find_by(name: "Github")
)

  Plan.create!(
  plan: "paper",
  price: 4900, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.nikkei.com/",
  resource: resource.find_by(name: "Nikkei")
)

  Plan.create!(
  plan: "Electronic",
  price: 4277, billing_cycle: 1,
  Cancellation_notice: "",
  url: "https://www.nikkei.com/",
  resource: resource.find_by(name: "Nikkei")
)

  Plan.create!(
  plan: "Year-plan",
  price: 2815, billing_cycle: 12,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "The New York Times")
)

  Plan.create!(
  plan: "individual",
  price: 1180, billing_cycle: 1,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  plan: "individual annual",
  price: 11800, billing_cycle: 12,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  plan: "family",
  price: 2280, billing_cycle: 1,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  plan: "student",
  price: 680, billing_cycle: 1,
  Cancellation_notice: "",
  url: "",
  resource: resource.find_by(name: "Youtube premium")
)

  Plan.create!(
  plan: "S",
  price: 3800, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.radishbo-ya.co.jp/",
  resource: resource.find_by(name: "Radish Boya")
)

  Plan.create!(
  plan: "M",
  price: 4200, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.radishbo-ya.co.jp/",
  resource: resource.find_by(name: "Radish Boya")
)

  Plan.create!(
  plan: "6 meal",
  price: 3888, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://nosh.jp/influencer-promotion?key=retargeting1000off&utm_source=google&utm_medium=cpc&utm_campaign=nosh&utm_content=nosh&utm_term=%E5%BC%81%E5%BD%93%20nosh&gclid=Cj0KCQiAveebBhD_ARIsAFaAvrG1c1B8STzIfkOf98h-Zn4L4Hs7AN5oxs0LMtQlJ_ZwtzMNsvBmjjIaAtn1EALw_wcB",
  resource: resource.find_by(name: "Nosh")
)

  Plan.create!(
  plan: "2 people 3 recipes",
  price: 4860, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.hellofresh.jp/",
  resource: resource.find_by(name: "HelloFresh")
)

  Plan.create!(
  plan: "2 people 4 recipes",
  price: 6060, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.hellofresh.jp/",
  resource: resource.find_by(name: "HelloFresh")
)

  Plan.create!(
  plan: "4 people 3 recipes",
  price: 9060, billing_cycle: 0.25,
  Cancellation_notice: "",
  url: "https://www.hellofresh.jp/",
  resource: resource.find_by(name: "HelloFresh")
)
puts "finnished seeding plans..."
