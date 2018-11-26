class RemoveBookImageFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :book_image, :string
  end
end
