class ChangeUploadKkToBlobInClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :upload_kk, 'bytea USING CAST(upload_kk AS bytea)'
  end
end
