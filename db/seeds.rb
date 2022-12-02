# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying everything..."
Subscription.destroy_all
Plan.destroy_all
User.destroy_all
Resource.destroy_all
Notification.destroy_all

puts "Creating a user..."

user = User.find_by(email: "user@me.com")
if user
  user.line_id = "U19c759253e256998ae12db0918b3d055" # uses my personal line ID for testing purposes for now --Kaho
  user.save
else
  User.create(
    name: "Alex",
    email: "user@me.com",
    password: "test123",
    line_id: "U19c759253e256998ae12db0918b3d055",
  )
  # uses my personal line ID for testing purposes for now --Kaho
end
require_relative "seeds/resources_seeds"
require_relative "seeds/plans_seeds"
require_relative "seeds/subscriptions_seeds"

# fake notification for the demo
Notification.create(content: "Apple TV", user: User.first)
