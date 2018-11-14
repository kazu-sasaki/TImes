class Chapter < ApplicationRecord
    belongs_to :book
    has_many :sectors, inverse_of: :chapter
    has_many :reads
    accepts_nested_attributes_for :sectors, allow_destroy: true
end
