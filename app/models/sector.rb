class Sector < ApplicationRecord
    belongs_to :chapter
    has_many :reads
    attachment :sector_image
end
