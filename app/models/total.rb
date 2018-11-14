class Total < ApplicationRecord
    belongs_to :buy
    belongs_to :cart
    belongs_to :book
end
