class AddAksesoriIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :aksesori_id, :integer
  end
end
