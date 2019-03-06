class CreateCameras < ActiveRecord::Migration[5.1]
  def change
    create_table :cameras do |t|
      t.integer :category_product_id
      t.integer :type_camera_id
      t.integer :merk_camera_id
      t.integer :availability_product_id
      t.string :name
      t.text :camera_description
      t.text :camera_kelengkapan
      t.decimal :price
      t.string :review_video
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.string :slug

      t.timestamps
    end
    add_index :cameras, :slug, unique: true
  end
end
