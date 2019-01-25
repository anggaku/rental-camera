class CreateBrandProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :brand_products do |t|
      t.string :name

      t.timestamps
    end
  end
end
