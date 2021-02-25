class Friendship < ApplicationRecord
    belongs_to :user
    # alias of User to friends
    belongs_to :friend, class_name "User"
end
