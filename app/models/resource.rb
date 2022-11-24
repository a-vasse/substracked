class Resource < ApplicationRecord
  belongs_to :user, optional: true
  has_many :plans, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :url, format: { with: URI.regexp, allow_nil: true }
end
