class Event < ApplicationRecord
  belongs_to :user
  validates :name, :date, :location, :state, presence: true
  validate :isFuture
  has_many :comments
  has_many :participations
  has_many :users_attending, through: :participations, source: :user

  def isFuture
      if date < Date.today
          errors.add(:date, "must be in the future")
      end
  end
end
