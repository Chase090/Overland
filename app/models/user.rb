class User < ApplicationRecord
    has_secure_password
    has_one :rig, dependent: :destroy
    has_many :travels, dependent: :destroy
    has_many :locations, through: :travels
    accepts_nested_attributes_for :rig
    has_one_attached :avatar
    

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true

    def full_name
        self.first_name + " " + self.last_name
    end

    def travel_count
        self.travels.count
    end
    
end
