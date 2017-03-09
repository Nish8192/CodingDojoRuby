class Message < ApplicationRecord
    validates :author, :message, presence: true
    belongs_to :post
    belongs_to :user
end
