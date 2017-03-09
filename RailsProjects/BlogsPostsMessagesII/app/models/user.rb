class User < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
    has_many :owners, dependent: :destroy
    has_many :posts, dependent: :destroy
    has_many :messages, dependent: :destroy
    has_many :blogs, through: :owners
end
