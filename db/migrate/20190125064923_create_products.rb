class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category_product_id
      t.integer :brand_product_id
      t.integer :availability_product
      t.string :name
      t.text :description
      t.text :kelengkapan
      t.integer :price
      t.string :review_video
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.string :image6
      t.string :image7
      t.string :image8
      t.string :image9
      t.string :image10

      t.timestamps
    end
  end
end
