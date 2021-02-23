class User < ApplicationRecord
    has_secure_password


    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true

    def full_name
        self.first_name + " " + self.last_name
    end
end
