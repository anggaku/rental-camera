class Product < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    belongs_to :category_product
    belongs_to :brand_product
    belongs_to :availability_product
    belongs_to :type_camera
    belongs_to :merk_lensa
    belongs_to :aksesori
    belongs_to :client
end
