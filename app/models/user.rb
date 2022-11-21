class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  has_many :subscriptions, dependent: :destroy
  has_many :resources, through: :subscriptions
  has_many :subscriptions

  has_one_attached :photo
end
