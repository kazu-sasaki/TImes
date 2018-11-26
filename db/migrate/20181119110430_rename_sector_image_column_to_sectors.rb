class RenameSectorImageColumnToSectors < ActiveRecord::Migration[5.2]
  def change
    rename_column :sectors, :sector_image, :sector_image_id
  end
end
