class AddBookPriceToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :book_price, :integer
  end
end
