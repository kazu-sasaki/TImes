class RemoveBookPriceFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :book_price, :string
  end
end
