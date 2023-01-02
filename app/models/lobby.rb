class Lobby < ApplicationRecord

    validates :name, presence: true
    validates :player_number, numericality: true
end
