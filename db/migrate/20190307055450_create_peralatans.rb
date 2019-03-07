class CreatePeralatans < ActiveRecord::Migration[5.1]
  def change
    create_table :peralatans do |t|
      t.integer :category_product_id
      t.integer :availability_product_id
      t.integer :aksesori_id
      t.string :name
      t.string :slug
      t.text :peralatan_description
      t.text :peralatan_kelengkapan
      t.decimal :price
      t.string :review_video
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5

      t.timestamps
    end
    add_index :peralatans, :slug, unique: true
  end
end
