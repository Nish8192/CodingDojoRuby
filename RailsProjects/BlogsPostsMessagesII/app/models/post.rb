class Post < ApplicationRecord
    validates :title, :content, presence: true
    belongs_to :blog
    belongs_to :user
    has_many :messages, dependent: :destroy
    has_many :comments, as: :commentable, dependent: :destroy
end
