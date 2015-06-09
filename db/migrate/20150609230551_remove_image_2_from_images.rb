class RemoveImage2FromImages < ActiveRecord::Migration
  def change
    remove_column :images, :image_2, :string
    rename_column :images, :image_1, :image_url
  end
end
