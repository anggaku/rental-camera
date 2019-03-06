class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :no_invoice
      t.integer :client_id
      t.date :tgl_invoice
      t.date :tgl_awal
      t.date :tgl_akhir
      t.integer :product_id
      t.text :lokasi
      t.decimal :harga
      t.decimal :diskon
      t.decimal :total_biaya
      t.string :tahun
      t.string :status

      t.timestamps
    end
  end
end
