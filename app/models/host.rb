class Host < ApplicationRecord

    has_many :lobbies
    has_many :users, through: :lobbies
    has_many :games, through: :lobbies

end
