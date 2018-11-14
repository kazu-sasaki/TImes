class CreateSectors < ActiveRecord::Migration[5.2]
  def change
    create_table :sectors do |t|
      #追加項目
            t.integer  :sector_number
            t.text :sector_body
            t.string :sector_image_id
            t.integer :chapter_id

      t.timestamps
    end
  end
end
