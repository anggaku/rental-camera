class Payment < ApplicationRecord
    belongs_to :invoice
    belongs_to :bank
    belongs_to :client
end
