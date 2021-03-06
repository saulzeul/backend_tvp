class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, length: { in: 8..20 }, format: { with: /\A (?=.{8,}) (?=.*\d) (?=.*[a-z]) (?=.*[A-Z]) (?=.*[[:^alnum:]]) 
    /x }

    has_one_attached :avatar
    belongs_to :area
    belongs_to :role
end
