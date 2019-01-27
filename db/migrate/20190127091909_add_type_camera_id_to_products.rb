class AddTypeCameraIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :type_camera_id, :integer
  end
end
