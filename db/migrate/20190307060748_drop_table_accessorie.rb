class DropTableAccessorie < ActiveRecord::Migration[5.1]
  def change
    drop_table :accessories
  end
end
