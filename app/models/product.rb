class Product < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    belongs_to :category_product
    belongs_to :brand_product
    belongs_to :availability_product
    belongs_to :type_camera
end
