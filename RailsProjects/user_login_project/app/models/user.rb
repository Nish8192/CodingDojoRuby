class User < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :email, :age, presence: {message:"All fields must be completed!"}
    validates :first_name, :last_name, length: { minimum: 2 }
    validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
    validates :age, numericality: {greater_than: 10, less_than: 150}
end
