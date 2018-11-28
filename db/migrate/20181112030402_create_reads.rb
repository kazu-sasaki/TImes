class CreateReads < ActiveRecord::Migration[5.2]
  def change
    create_table :reads, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      #追加項目
            t.integer :chapter_id
            t.integer :sector_id
            t.time :read_time
            t.integer :read_count
            t.integer :siori

      t.timestamps
    end
  end
end

