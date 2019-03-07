class Aksesori < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_many :peralatans
end
