class User < ApplicationRecord
    has_secure_password
    has_many :rigs
    has_many :locations, through: :posts
    has_many :posts
    has_one_attached :avatar

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true

    def full_name
        self.first_name + " " + self.last_name
    end
end
