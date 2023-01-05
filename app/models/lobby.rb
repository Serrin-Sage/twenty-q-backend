class Lobby < ApplicationRecord
    belongs_to :host
    has_and_belongs_to_many :users
    has_many :games
    has_many :messages
    has_many :questions

    validates :lobbyname, presence: true
    validates :answer, presence: true
end
