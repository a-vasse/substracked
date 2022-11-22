# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Winston", email: "user@me.com", password: "test")

require_relative "seeds/plans_seeds"
require_relative "seeds/resources_seeds"
require_relative "seeds/subscriptions_seeds"
