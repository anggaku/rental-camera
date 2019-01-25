class AddSlugToAvailabilityProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :availability_products, :slug, :string
    add_index :availability_products, :slug, unique: true
  end
end
