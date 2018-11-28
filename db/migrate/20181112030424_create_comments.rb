class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      #追加項目
            t.integer :user_id
            t.integer :book_id
            t.string :review_title
            t.text :review_body
            t.string :review

      t.timestamps
    end
  end
end

