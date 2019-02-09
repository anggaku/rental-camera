class ChangeUploadKtpToBlobInClients < ActiveRecord::Migration[5.1]
  def change
     change_column :clients, :upload_ktp, 'bytea USING CAST(upload_ktp AS bytea)'
  end
end
