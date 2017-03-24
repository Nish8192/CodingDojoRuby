class Invitation < ApplicationRecord
    belongs_to :user, :foreign_key => "user_id", :class_name => "User"
    belongs_to :sender, :foreign_key => "sender_id", :class_name => "User"
end
