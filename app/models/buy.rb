class Buy < ApplicationRecord
    has_many :books
    has_many :totals
    belongs_to :user
end
