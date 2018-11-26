class Book < ApplicationRecord
    has_many :carts
    has_many :buys
    has_many :totals
    has_many :comments
    has_many :chapters, inverse_of: :book
    # 削除処理の受け入れ
    accepts_nested_attributes_for :chapters, allow_destroy: true
    attachment :book_image

    def self.search(search)
            if search
                  Book.where(['book_title LIKE ?', "%#{search}%"])

            else
                  Book.all
            end
          end
end
