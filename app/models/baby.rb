class Baby < ApplicationRecord
    has_many :ownerships
    has_many :users, through: :ownerships

    def my_owners
    users
    end


end
