class User < ApplicationRecord
    has_and_belongs_to_many :lobby

        validates :name, presence: true

end
