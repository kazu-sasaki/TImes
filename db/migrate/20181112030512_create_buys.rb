class CreateBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :buys, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      #追加項目
            t.integer :user_id
            t.integer :book_id

      t.timestamps
    end
  end
end

