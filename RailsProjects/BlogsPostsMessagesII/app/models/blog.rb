class Blog < ApplicationRecord
    validates :name, :desc, presence: true
    has_many :owners, dependent: :destroy
    has_many :posts, dependent: :destroy
    has_many :users, through: :owners
    has_many :comments, as: :commentable, dependent: :destroy
end
