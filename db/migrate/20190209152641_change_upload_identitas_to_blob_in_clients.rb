class ChangeUploadIdentitasToBlobInClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :upload_identitas, 'bytea USING CAST(upload_identitas AS bytea)'
  end
end
