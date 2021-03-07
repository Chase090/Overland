class Location < ApplicationRecord
    has_many :travels 
    has_many :users, through: :travels
    validates :name, :longitude, :latitude, :state, :url, presence: true


end
