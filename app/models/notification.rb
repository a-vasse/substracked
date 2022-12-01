class Notification < ApplicationRecord
  belongs_to :user
  validates :content, presence: true

  def self.unread
    where(read: false)
  end
end
