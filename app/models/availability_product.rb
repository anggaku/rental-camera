class AvailabilityProduct < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    
    has_many :cameras
    has_many :lensas
    has_many :accessories
end
