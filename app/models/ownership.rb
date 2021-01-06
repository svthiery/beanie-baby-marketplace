class Ownership < ApplicationRecord
    belongs_to :baby
    belongs_to :user

    has_many :trades
end
