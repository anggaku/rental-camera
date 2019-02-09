class ChangeUploadKtpToStringInClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :upload_ktp, :string
  end
end
