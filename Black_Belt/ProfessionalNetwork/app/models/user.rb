class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  # PASSWORD_VALIDATOR = /\A(
  validates :name, :email, :description, presence: true
  before_create :password, :password_confirmation, presence: true, length: {minimum: 8}
  validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
  has_many :networks, :foreign_key => "friend_id"
  has_many :invitations
  has_many :friends, through: :networks
  has_many :invited_by, through: :invitations, source: :user
end
