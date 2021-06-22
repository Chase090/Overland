class Travel < ApplicationRecord
    belongs_to :user
    belongs_to :location
    accepts_nested_attributes_for :location
    validates :distance, presence: true

   scope :long_travel, -> {where('distance > 25')}
   scope :short_travel, -> {where('distance < 25')}
end
