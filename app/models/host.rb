class Host < ApplicationRecord

    has_many :lobbies
    has_many :questions
    has_many :messages
    has_many :users, through: :lobbies
    has_many :games, through: :lobbies

    validates :name, presence: true
end
