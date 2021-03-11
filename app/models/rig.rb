class Rig < ApplicationRecord
    belongs_to :user
    has_many :travels, through: :users
    
    validates :year_model, :name, :make, :model, presence: true
    validates :year_model, numericality: { greater_than: 1950 }
    


    # def self.current
    #     where(:active => true)
    # end

    
end
