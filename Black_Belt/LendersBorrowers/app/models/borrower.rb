class Borrower < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  # PASSWORD_VALIDATOR = /(?=.*[A-Z])(?=.*\d)/
  PASSWORD_VALIDATOR = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}/
  validates :first_name, :last_name, :email, :password, :reason, :description, :needed, presence: true
  validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
  validates :password, length: {minimum: 8}, format: {with: PASSWORD_VALIDATOR, :multiline => true}
  has_many :loans
  has_many :sharks, through: :loans, source: :lender
end
