class Message < ApplicationRecord
    validates :author, :message, presence: true
    belongs_to :post
    belongs_to :user
    has_many :comments, as: :commentable, dependent: :destroy
end
