class ChangeUploadIdentitasToStringInClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :upload_identitas, :string
  end
end
