class Accessorie < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    belongs_to :aksesori
    belongs_to :category_product
    belongs_to :availability_product

    mount_uploader :image1, ImageUploader
    mount_uploader :image2, ImageUploader
    mount_uploader :image3, ImageUploader
    mount_uploader :image4, ImageUploader
    mount_uploader :image5, ImageUploader
end
