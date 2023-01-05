class User < ApplicationRecord

    has_many :messages

    has_and_belongs_to_many :lobby

    validates :name, presence: true


end
