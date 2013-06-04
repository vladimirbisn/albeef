class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :video_url
      t.boolean :is_active

      t.timestamps
    end
  end
end
