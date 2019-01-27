class TypeCamera < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_many :products
end
