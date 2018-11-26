class Buy < ApplicationRecord
    belongs_to :user
    has_many :totals
end
