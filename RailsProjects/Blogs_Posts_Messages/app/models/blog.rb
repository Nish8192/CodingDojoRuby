class Blog < ApplicationRecord
    has_many :post
    validates :name, :desc, presence: true
end
