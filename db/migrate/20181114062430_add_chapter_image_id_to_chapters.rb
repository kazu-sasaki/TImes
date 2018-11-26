class AddChapterImageIdToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :chapter_image_id, :string
  end
end
