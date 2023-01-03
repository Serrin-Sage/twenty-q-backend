class Lobby < ApplicationRecord
    belongs_to :host
    has_many :users
end
