class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  validates :name, presence: true

  has_many :subscriptions, dependent: :destroy
  has_many :plans, through: :subscriptions
  has_many :resources, through: :plans do
    def active
      where("subscriptions.status = ?", true)
    end
  end

  has_many :created_resources,
           foreign_key: "user_id",
           class_name: "Resource",
           dependent: :destroy

  has_one_attached :photo

  after_create :create_resource

  private

  def create_resource
    Resource.create(name: "#{name}'s list", user_id: id)
  end
end
