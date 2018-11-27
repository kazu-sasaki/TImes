class CreateTotals < ActiveRecord::Migration[5.2]
  def change
    create_table :totals, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      #追加項目
            t.integer :cart_id
            t.integer :book_id
            t.integer :buy_id
            t.integer :total_price
      t.timestamps
    end
  end
end
