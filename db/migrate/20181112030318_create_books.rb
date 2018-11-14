class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
#追加項目
      t.string :book_title
      t.string :author
      t.string :category
      t.string :book_image_id
      t.string :book_price
      t.text :sumary
      t.timestamps
    end
  end
end
