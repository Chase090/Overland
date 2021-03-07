class Rig < ApplicationRecord
    belongs_to :user
    has_many :travels, through: :users
    
    validates :year, :name, :make, :model, presence: true
    validates :year, numericality: { greater_than: 1950, less_than_or_equal_to: 2022 }


    # def self.current
    #     where(:active => true)
    # end

    
end
