class Invoice < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    belongs_to :payment
    belongs_to :client
end
