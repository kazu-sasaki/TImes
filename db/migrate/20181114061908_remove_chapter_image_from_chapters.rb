class RemoveChapterImageFromChapters < ActiveRecord::Migration[5.2]
  def change
    remove_column :chapters, :chapter_image, :string
  end
end
