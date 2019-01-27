class CreateMerkLensas < ActiveRecord::Migration[5.1]
  def change
    create_table :merk_lensas do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :merk_lensas, :slug, unique: true
  end
end
