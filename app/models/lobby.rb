class Lobby < ApplicationRecord
    belongs_to :host
    has_and_belongs_to_many :users
    has_many :games
end