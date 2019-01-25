class CreateAvailabilityProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :availability_products do |t|
      t.string :name

      t.timestamps
    end
  end
end
