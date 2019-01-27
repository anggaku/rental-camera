class CreateAksesoris < ActiveRecord::Migration[5.1]
  def change
    create_table :aksesoris do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :aksesoris, :slug, unique: true
  end
end
