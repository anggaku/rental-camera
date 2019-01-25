class AddSlugToBrandProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :brand_products, :slug, :string
    add_index :brand_products, :slug, unique: true
  end
end
