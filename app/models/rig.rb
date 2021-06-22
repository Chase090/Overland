class Rig < ApplicationRecord
    belongs_to :user
    has_one_attached :avatar
    
    validates_associated :user

    
    validates :name, :make, :model, presence: true
    validates :year_model, numericality: { greater_than: 1950}, allow_blank: true
    
    def ym
        self.year_model.to_s + " " + self.model
    end

    
end
