class Post < ApplicationRecord
    has_many :message
    belongs_to :blog
    validates :title, :content, presence: true
    validates :title, length: { minimum: 7}
end
