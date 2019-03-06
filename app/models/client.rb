class Client < ApplicationRecord
    def self.get_id
        # seems broken in high connection because no lock lol seems unlikely to happen for this site tho
        # could be broken because race condition 
        self.maximum(:id) ? self.maximum(:id) + 1 : 1
    end

    def self.generate_id_client
        'C'+self.get_id.to_s.rjust(6,'0')
    end

    extend FriendlyId
    friendly_id :name, use: :slugged
    
    mount_uploader :upload_ktp, ImageUploader
    mount_uploader :upload_kk, ImageUploader
    mount_uploader :upload_identitas, ImageUploader

    has_many :products
    has_many :invoices
end
