class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.timestamps
    end
  end
end
