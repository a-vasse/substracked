# Resource.create(name: '', url: '')
puts "Creating predefiened resources..."
Resource.create!(name: "Netflix", url: "https://www.netflix.com/")
Resource.create!(
  name: "Amazon Prime",
  url: "https://www.amazon.co.jp/amazonprime?language=jp",
  logo: ActionController::Base.helpers.image_path("resource icons/amazon_prime.jpg")
)
Resource.create!(
  name: "Disney +",
  url: "https://www.disneyplus.com/en-jp",
  logo: ActionController::Base.helpers.image_path("resource icons/disney_plus.jpg")
  )
Resource.create!(
  name: "Masterclass",
  url: "https://www.masterclass.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/masterclass.jpg")
)
Resource.create!(
  name: "Hulu",
  url: "https://www.hulu.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/hulu.jpg")
)
Resource.create!(
  name: "Apple TV",
  url: "https://tv.apple.com/jp?l=en",
  logo: ActionController::Base.helpers.image_path("resource icons/apple-tv.jpg")
)
Resource.create!(
  name: "Xbox Game Pass",
  url: "https://www.xbox.com/ja-JP/xbox-game-pass",
  logo: ActionController::Base.helpers.image_path("resource icons/xbox.jpg")
)
Resource.create!(
  name: "Playstation Plus",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  logo: ActionController::Base.helpers.image_path("resource icons/Playstation_plus.jpg")
)
Resource.create!(
  name: "Nintendo Online",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  logo: ActionController::Base.helpers.image_path("resource icons/nintendo.jpg")
)
Resource.create!(
  name: "Github",
  url: "https://github.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/github.jpg")
)
Resource.create!(
  name: "Nikkei",
  url: "https://www.nikkei.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/nikkei.jpg")
)
Resource.create!(
  name: "The New York Times",
  url: "https://www.nytimes.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/New_York_Times.jpg")
)
Resource.create!(
  name: "Youtube Premium",
  url: "https://www.youtube.com",
  logo: ActionController::Base.helpers.image_path("resource icons/youtube.jpg")
)
Resource.create!(
  name: "Radish Boya",
  url: "https://www.radishbo-ya.co.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/Radish_Boya.jpg")
)
Resource.create!(
  name: "Nosh",
  url: "https://nosh.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/NOSH.jpg")
)
Resource.create!(
  name: "HelloFresh",
  url: "https://www.hellofresh.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/HelloFresh.jpg")
)
puts "Added predefiened resources succesfully!"

puts "Create custom resources..."
Resource.create!(name: "My list", user: User.first)
puts "Create custom resources succesfully!"
