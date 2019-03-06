class CreateMerkCameras < ActiveRecord::Migration[5.1]
  def change
    create_table :merk_cameras do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :merk_cameras, :slug, unique: true
  end
end
