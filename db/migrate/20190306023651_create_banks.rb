class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.string :kode_bank
      t.string :nama_bank
      t.string :no_rekening
      t.string :nama_rekening
      t.text :alamat

      t.timestamps
    end
  end
end
