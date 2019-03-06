class CreateAccessories < ActiveRecord::Migration[5.1]
  def change
    create_table :accessories do |t|
      t.integer :category_product_id
      t.integer :availability_product_id
      t.integer :aksesori_id
      t.string :name
      t.string :slug
      t.text :accessorie_description
      t.text :accessorie_kelengkapan
      t.decimal :price
      t.string :review_video
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5

      t.timestamps
    end
    add_index :accessories, :slug, unique: true
  end
end
