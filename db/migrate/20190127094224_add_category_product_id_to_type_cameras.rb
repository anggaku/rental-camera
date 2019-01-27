class AddCategoryProductIdToTypeCameras < ActiveRecord::Migration[5.1]
  def change
    add_column :type_cameras, :category_product_id, :integer
  end
end
