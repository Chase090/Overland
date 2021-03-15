class Rig < ApplicationRecord
    belongs_to :user
    has_many :travels, through: :users
   
    
    validates_associated :user

    
    validates :year_model, :name, :make, :model, presence: true
    validates :year_model, numericality: { greater_than: 1950 }
    
    def ym
        self.year_model.to_s + " " + self.model
    end

    # def self.current
    #     where(:active => true)
    # end

    
end
