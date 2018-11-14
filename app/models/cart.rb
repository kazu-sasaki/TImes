class Cart < ApplicationRecord
    has_many :totals
    belongs_to :book
    belongs_to :user
end
