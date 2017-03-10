class Dojo < ApplicationRecord
    validates :state, length: {is: 2}
    has_many :students
end
