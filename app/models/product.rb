class Product < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    mount_uploader :image1, ImageUploader
    mount_uploader :image2, ImageUploader
    mount_uploader :image3, ImageUploader
    mount_uploader :image4, ImageUploader
    mount_uploader :image5, ImageUploader
    mount_uploader :image6, ImageUploader
    mount_uploader :image7, ImageUploader
    mount_uploader :image8, ImageUploader
    mount_uploader :image9, ImageUploader
    mount_uploader :image10, ImageUploader

    belongs_to :category_product
    belongs_to :brand_product
    belongs_to :availability_product
    belongs_to :type_camera
    belongs_to :merk_lensa
    belongs_to :aksesori
    belongs_to :client

    has_many :invoices
end
