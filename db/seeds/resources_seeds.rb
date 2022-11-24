# Resource.create(name: '', url: '')
puts "Creating predefiened resources..."
Resource.create!(name: "Netflix", url: "https://www.netflix.com/")
Resource.create!(
  name: "Amazon Prime",
  url: "https://www.amazon.co.jp/amazonprime?language=jp",
  logo: ActionController::Base.helpers.image_path("resource icons/amazon_prime.svg")
)
Resource.create!(
  name: "Disney +",
  url: "https://www.disneyplus.com/en-jp",
  logo: ActionController::Base.helpers.image_path("resource icons/disney_plus.svg")
  )
Resource.create!(
  name: "Masterclass",
  url: "https://www.masterclass.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/masterclass.svg")
)
Resource.create!(
  name: "Hulu",
  url: "https://www.hulu.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/hulu.svg")
)
Resource.create!(
  name: "Apple TV",
  url: "https://tv.apple.com/jp?l=en",
  logo: ActionController::Base.helpers.image_path("resource icons/apple-tv.svg")
)
Resource.create!(
  name: "Xbox Game Pass",
  url: "https://www.xbox.com/ja-JP/xbox-game-pass",
  logo: ActionController::Base.helpers.image_path("resource icons/xbox.svg")
)
Resource.create!(
  name: "Playstation Plus",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  logo: ActionController::Base.helpers.image_path("resource icons/Playstation_plus.png")
)
Resource.create!(
  name: "Nintendo Online",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  logo: ActionController::Base.helpers.image_path("resource icons/nintendo.svg")
)
Resource.create!(
  name: "Github",
  url: "https://github.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/github.svg")
)
Resource.create!(
  name: "Nikkei",
  url: "https://www.nikkei.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/nikkei.png")
)
Resource.create!(
  name: "The New York Times",
  url: "https://www.nytimes.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/New_York_Times.png"),
)
Resource.create!(
  name: "Youtube Premium",
  url: "https://www.youtube.com",
  logo: ActionController::Base.helpers.image_path("resource icons/youtube.svg")
)
Resource.create!(
  name: "Radish Boya",
  url: "https://www.radishbo-ya.co.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/Radish_Boya.jpg")
)
Resource.create!(
  name: "Nosh",
  url: "https://nosh.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/NOSH.png")
)
Resource.create!(
  name: "HelloFresh",
  url: "https://www.hellofresh.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/HelloFresh.svg")
)
puts "Added predefiened resources succesfully!"

puts "Create custom resources..."
Resource.create!(name: "My list", user: User.first)
puts "Create custom resources succesfully!"
