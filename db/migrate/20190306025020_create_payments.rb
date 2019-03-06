class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :invoice_id
      t.integer :client_id
      t.date :tgl_payment
      t.decimal :jumlah_diterima
      t.decimal :total_keseluruhan
      t.integer :bank_id
      t.string :status_sewa

      t.timestamps
    end
  end
end
