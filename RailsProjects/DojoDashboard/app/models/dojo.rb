class Dojo < ApplicationRecord
    validates :state, length: {is: 2}
end
