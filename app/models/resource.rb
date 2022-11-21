class Resource < ApplicationRecord
  belongs_to :user
  has_many :subscriptions
  has_many :plans

  validates :name, presence: true, length: { minimum: 2 }
  validates :url, format: { with: URI.regexp }
end
