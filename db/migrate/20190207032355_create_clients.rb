class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :id_client
      t.string :client_name
      t.text :alamat_rumah
      t.text :alamat_kantor
      t.string :no_hp
      t.string :id_line
      t.string :id_ig
      t.string :id_fb
      t.string :email
      t.string :kampus
      t.string :upload_ktp
      t.string :upload_kk
      t.string :upload_identitas
      t.string :slug

      t.timestamps
    end
    add_index :clients, :slug, unique: true
  end
end
