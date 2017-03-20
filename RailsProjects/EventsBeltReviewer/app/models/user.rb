class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
  validates :first_name, :last_name, :email, :location, :state, :password, :password_confirmation, presence: true
  validates :state, length: {is: 2}
  validates :password, length: {minimum: 8}
  has_many :events
  has_many :comments, dependent: :destroy
  has_many :events_commented, through: :comments, source: :event
end
