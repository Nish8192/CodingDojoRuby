class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  PASSWORD_VALIDATOR = /A((?=.*[A-Z])(?=.*\d)).*/x
  validates :name, :email, :description, presence: true
  before_create :password, :password_confirmation, presence: true, length: {minimum: 8}, format: { with: PASSWORD_VALIDATOR}
  validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
  has_many :friends, :foreign_key => "user_id", :class_name => "Network"
  has_many :invitations, :foreign_key => "user_id", :class_name => "Invitation"
end
