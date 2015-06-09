class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_1
      t.string :image_2

      t.timestamps null: false
    end
  end
end
