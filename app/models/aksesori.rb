class Aksesori < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_many :accessories
end
