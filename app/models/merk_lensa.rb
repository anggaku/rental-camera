class MerkLensa < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_many :lensas
end
