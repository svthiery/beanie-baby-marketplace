class User < ApplicationRecord
    #has_many :trades
    has_many :traders, foreign_key: :trader_id, class_name: "Trade"
    has_many :tradees, through: :traders
    has_many :tradees, foreign_key: :tradee_id, class_name: "Trade"
    has_many :traders, through: :tradees
    has_many :g_ownerships, foreign_key: :g_ownership_id, class_name: "Trade"
    #has_many :d_ownerships, through: :g_ownerships
    #has_many :d_ownerships, foreign_key: :d_ownership_id, class_name: "Trade"
    #has_many :g_ownerships, through: :d_ownerships
    has_many :ownerships
    has_many :trades, through: :ownerships
    has_many :babies, through: :ownerships

    has_secure_password
end
