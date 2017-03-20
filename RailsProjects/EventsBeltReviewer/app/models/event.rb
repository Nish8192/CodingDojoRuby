class Event < ApplicationRecord
  belongs_to :user
  validates :name, :date, :location, :state, presence: true
  has_many :comments
  has_many :users_attending, through: :participations, source: :user
end
