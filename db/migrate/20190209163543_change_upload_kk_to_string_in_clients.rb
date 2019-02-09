class ChangeUploadKkToStringInClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :upload_kk, :string
  end
end
