class User < ApplicationRecord
    has_many :ownerships
    has_many :babies, through: :ownerships
    has_secure_password
end
