class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image_url_1
      t.string :image_url_2
      t.string :image_url_3
      t.string :image_url_4
      t.string :image_url_5

      t.timestamps
    end
  end
end
