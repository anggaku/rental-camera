class AddMerkLensaIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :merk_lensa_id, :integer
  end
end
