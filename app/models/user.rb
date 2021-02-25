class User < ApplicationRecord
    has_secure_password
    # when user is deleted, dependent friendship model will also be destroyed
    has_many :friendship, dependent: :destroy
    # 
    has_many :friends, through, :friendship
    


    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true

    def full_name
        self.first_name + " " + self.last_name
    end
end
