class RemoveImageUrLsFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :image_url_2, :string
    remove_column :images, :image_url_3, :string
    remove_column :images, :image_url_4, :string
    remove_column :images, :image_url_5, :string
  end
end
