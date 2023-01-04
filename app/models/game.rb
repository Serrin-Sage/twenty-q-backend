class Game < ApplicationRecord
    belongs_to :lobby
    belongs_to :host
end
