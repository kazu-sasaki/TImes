class CreateSectors < ActiveRecord::Migration[5.2]
  def change
    create_table :sectors, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      #追加項目
            t.integer  :sector_number
            t.text :sector_body
            t.string :sector_image
            t.integer :chapter_id

      t.timestamps
    end
  end
end
