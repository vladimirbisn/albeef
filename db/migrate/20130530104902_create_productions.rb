class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :part_title
      t.string :dish_title
      t.text :top_description
      t.text :ingredients
      t.text :preparation
      t.string :part_img_url1
      t.string :part_img_url2
      t.string :dish_img_url
      t.integer :part_id
      t.timestamps
    end

  end
end
