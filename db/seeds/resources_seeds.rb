# Resource.create(name: '', url: '')
puts "Creating predefiened resources..."
Resource.create!(
  name: "Netflix",
  url: "https://www.netflix.com/YourAccount",
  logo: ActionController::Base.helpers.image_path("resource icons/Netflix.jpg"),
  category: "Entertainment",
)
Resource.create!(
  name: "Amazon Prime",
  url: "https://www.amazon.co.jp/-/en/mc/pipelines/cancellation",
  logo:
    ActionController::Base.helpers.image_path(
      "resource icons/amazon_prime.jpg",
    ),
  category: "Shopping",
)
Resource.create!(
  name: "Disney +",
  url: "https://www.disneyplus.com/en-jp",
  logo:
    ActionController::Base.helpers.image_path("resource icons/disney_plus.jpg"),
  category: "Entertainment",
)
Resource.create!(
  name: "Masterclass",
  url: "https://www.masterclass.com/",
  logo:
    ActionController::Base.helpers.image_path("resource icons/masterclass.jpg"),
  category: "Education",
)
Resource.create!(
  name: "Hulu",
  url: "https://www.hulu.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/hulu.jpg"),
  category: "Entertainment",
)
Resource.create!(
  name: "Apple TV",
  url: "https://tv.apple.com/jp?l=en",
  logo:
    ActionController::Base.helpers.image_path("resource icons/apple-tv.jpg"),
  category: "Entertainment",
)
Resource.create!(
  name: "Xbox Game Pass",
  url: "https://www.xbox.com/ja-JP/xbox-game-pass",
  logo: ActionController::Base.helpers.image_path("resource icons/xbox.jpg"),
  category: "Gaming",
)
Resource.create!(
  name: "Playstation Plus",
  url: "https://www.playstation.com/ja-jp/ps-plus/",
  logo:
    ActionController::Base.helpers.image_path(
      "resource icons/Playstation_plus.jpg",
    ),
  category: "Gaming",
)
Resource.create!(
  name: "Nintendo Online",
  url: "https://www.nintendo.co.jp/hardware/switch/onlineservice/",
  logo:
    ActionController::Base.helpers.image_path("resource icons/nintendo.jpg"),
  category: "Gaming",
)
Resource.create!(
  name: "Github",
  url: "https://github.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/github.jpg"),
  category: "Business",
)
Resource.create!(
  name: "Nikkei",
  url: "https://www.nikkei.com/",
  logo: ActionController::Base.helpers.image_path("resource icons/nikkei.jpg"),
  category: "Business",
)
Resource.create!(
  name: "The New York Times",
  url: "https://www.nytimes.com/",
  logo:
    ActionController::Base.helpers.image_path(
      "resource icons/New_York_Times.jpg",
    ),
  category: "Business",
)
Resource.create!(
  name: "Youtube Premium",
  url: "https://www.youtube.com",
  logo: ActionController::Base.helpers.image_path("resource icons/youtube.jpg"),
  category: "Entertainment",
)
Resource.create!(
  name: "Radish Boya",
  url: "https://www.radishbo-ya.co.jp/",
  logo:
    ActionController::Base.helpers.image_path("resource icons/Radish_Boya.jpg"),
  category: "Food",
)
Resource.create!(
  name: "Nosh",
  url: "https://nosh.jp/",
  logo: ActionController::Base.helpers.image_path("resource icons/NOSH.jpg"),
  category: "Food",
)
Resource.create!(
  name: "HelloFresh",
  url: "https://www.hellofresh.jp/",
  logo:
    ActionController::Base.helpers.image_path("resource icons/HelloFresh.jpg"),
  category: "Food",
)
puts "Added predefiened resources succesfully!"

puts "Create custom resources..."
Resource.create!(name: "My list", user: User.first)
puts "Create custom resources succesfully!"
