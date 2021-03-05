class Rig < ApplicationRecord
    belongs_to :user
    has_many :travels, through: :users

    # def self.current
    #     where(:active => true)
    # end

    
end
