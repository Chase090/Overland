class Location < ApplicationRecord
    has_many :travels 
    has_many :users, through: :travels

end
