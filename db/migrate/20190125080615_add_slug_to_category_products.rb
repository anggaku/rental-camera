class AddSlugToCategoryProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :category_products, :slug, :string
    add_index :category_products, :slug, unique: true
  end
end
