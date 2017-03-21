class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
  before_create :password, :password_confirmation, presence: true, length: {minimum: 8}
  validates :first_name, :last_name, :email, :location, :state, presence: true
  validates :state, length: {is: 2}
  has_many :events
  has_many :participations
  has_many :comments, dependent: :destroy
  has_many :attending, through: :participations, source: :event
  has_many :events_commented, through: :comments, source: :event
end
