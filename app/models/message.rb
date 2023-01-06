class Message < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :host, optional: true
    belongs_to :lobby

    validates :content, presence: true
end
