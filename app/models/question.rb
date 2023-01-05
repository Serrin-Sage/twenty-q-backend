class Question < ApplicationRecord
    belongs_to :lobby
    belongs_to :host, optional: true
    belongs_to :lobby, optional: true
end
