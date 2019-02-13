class AddProductIdToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :product_id, :integer
  end
end
