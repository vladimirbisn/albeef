class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.datetime :date
      t.string :header
      t.text :body
      t.string :pic_title
      t.timestamps
    end
  end
end
