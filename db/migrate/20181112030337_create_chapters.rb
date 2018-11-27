class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      #追加項目
            t.integer :chapter_number
            t.integer :chapter_title
            t.integer :book_id

      t.timestamps
    end
  end
end
