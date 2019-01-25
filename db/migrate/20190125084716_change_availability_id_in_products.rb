class ChangeAvailabilityIdInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :availability_product, :availability_product_id
  end
end
