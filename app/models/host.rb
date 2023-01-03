class Host < ApplicationRecord

    has_many :lobbies
    has_many :users, through: :lobby
    has_many :games, through: :lobby

end
