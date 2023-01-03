class User < ApplicationRecord
    has_many :games, through: :lobby
end
