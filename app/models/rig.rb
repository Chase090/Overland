class Rig < ApplicationRecord
    belongs_to :user
    has_many :locations, through: users


end
