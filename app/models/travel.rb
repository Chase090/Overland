class Travel < ApplicationRecord
    belongs_to :user
    belongs_to :location
    accepts_nested_attributes_for :location
    has_one :rig, through: :user
    validates :distance, presence: true
    
end
