json.extract! product, :id, :category_product_id, :brand_product_id, :availability_product, :name, :description, :kelengkapan, :price, :review_video, :image1, :image2, :image3, :image4, :image5, :image6, :image7, :image8, :image9, :image10, :created_at, :updated_at
json.url product_url(product, format: :json)
