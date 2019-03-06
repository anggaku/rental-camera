class MerkCamera < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_many :cameras
end
