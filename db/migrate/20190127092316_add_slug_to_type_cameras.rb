class AddSlugToTypeCameras < ActiveRecord::Migration[5.1]
  def change
    add_column :type_cameras, :slug, :string
    add_index :type_cameras, :slug, unique: true
  end
end
